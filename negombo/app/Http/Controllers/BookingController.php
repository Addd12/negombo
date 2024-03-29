<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use App\Booking;
use App\Mail\SendMail;
use App\Bigmapmapping;
use App\Place;
use App\TempBooking;
use App\PromoCode;
use App\SettingAdmin;
use App\TempbookingCard;


use DateTime;
use Illuminate\Http\Client\Request as ClientRequest;

class BookingController extends Controller
{
    //

    public function confirmCreditcard($tracking_id)
    {

        $tempBookingInfo = TempbookingCard::where('user_booking_tracking_id', $tracking_id)->first();

        if($tempBookingInfo)
        {
            $booking = new Booking;
            $paymentId = $tempBookingInfo->user_card_paymentid;
            $booking->user_booking_tracking_id = $tracking_id;

            $result = $booking->verifyPayment($paymentId);

            if($result['status']=="OK"){
              // payment is confirmed
              $booking->place_id = $tempBookingInfo->place_id;
              $booking->user_fullname = $tempBookingInfo->user_fullname;
              $booking->user_surname = $tempBookingInfo->user_surname;
              $booking->user_email = $tempBookingInfo->user_email;
              $booking->user_phone = $tempBookingInfo->user_phone;
              $booking->user_no_of_guest = $tempBookingInfo->user_no_of_guest;
              $booking->user_no_of_babies = $tempBookingInfo->user_no_of_babies;
              if(isset($tempBookingInfo->guest_surname1))
                $booking->guest_surname1 = $tempBookingInfo->guest_surname1;
              if(isset($tempBookingInfo->guest_surname2))
                $booking->guest_surname2 = $tempBookingInfo->guest_surname2;
              if(isset($tempBookingInfo->guest_surname3))
                $booking->guest_surname3 = $tempBookingInfo->guest_surname3;

              if(isset($tempBookingInfo->baby_surname1))
                $booking->baby_surname1 = $tempBookingInfo->baby_surname1;
              if(isset($tempBookingInfo->baby_surname2))
                $booking->baby_surname2 = $tempBookingInfo->baby_surname2;
              if(isset($tempBookingInfo->baby_surname3))
                $booking->baby_surname3 = $tempBookingInfo->baby_surname3;

              $booking->user_checkin = $tempBookingInfo->user_checkin;
              $booking->user_checkout = $tempBookingInfo->user_checkout;
              //getting number of days

              $datetime1 = new DateTime($booking->user_checkin);
              $datetime2 = new DateTime($booking->user_checkout);
              $interval = $datetime1->diff($datetime2);
              $numberofdays = $interval->format('%a');

              if(!$booking->check_availability()){
                return redirect()->route('error.404');
              }
              $booking->user_payment_type = $tempBookingInfo->user_payment_type;
              $place = Place::where('place_id',$booking->place_id)->first();
              $set_admin = SettingAdmin::orderBy('id')->first();
              $price_temp = $set_admin->calculatePrice($booking->user_checkin, $booking->user_checkout, $booking->user_no_of_guest, $booking->user_no_of_babies);
              $place->price =  $price_temp;
              // promo calculation
              $promo = $tempBookingInfo->user_promo;
              $promoCode = new PromoCode;
              $discount = 0;

              if($promoCode->checkingValidity($promo, $place->map_name, $numberofdays) && $promoCode->usedPromoOnce($promo, $numberofdays)){
                $booking->user_promo = $promo;
                $discount = $promoCode->discountCalculate($booking->user_promo, $place->price);
                $place->price = $place->price - $discount;
              }
              $booking->paid_ammount = $place->price;
              $map_coods = Bigmapmapping::orderBy('id')->get();
              

              $Promo = "No Promo Code Used";

              $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'set_admin' => $set_admin, 'promo_type' => $Promo);


              if(Auth::user()){
                $booking->creator_name = Auth::user()->name;
              }
              $booking->save();
              \Mail::to($booking->user_email)->send(new SendMail($maparray));
              \Mail::to("backoffice@negombo.it")->send(new SendMail($maparray));

              // make free the place after booking is confirmed
              $temp_book = new TempBooking;
              $temp_book->makeFree($booking->place_id, $booking->checkin);
              $tempBookingInfo->delete();

              return view('userpages.confirmbooking')->with('maparray', $maparray);


          }else{
              //redirect to create bookings page with user booking details
              $maparray = request()->session()->get('maparray'); //get data from session
              $url = $maparray['bookings_url']; // get user bookings url from maparray
              return redirect($url)->with('bookinErrorMsg',"You cancelled your booking payment. Please refill the following data!");
            }
            
          }else{
            
            //redirect to create bookings page with user booking details
            $maparray = request()->session()->get('maparray'); //get data from session
            $url = $maparray['bookings_url']; // get user bookings url from maparray
            return redirect($url)->with('bookinErrorMsg',"You cancelled your booking payment. Please refill the following data!");
      }
        // return view('layouts.modalLayout.cardpaymentnotify');
    }




}
