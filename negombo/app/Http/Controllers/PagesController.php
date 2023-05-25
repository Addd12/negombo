<?php

namespace App\Http\Controllers;
// namespace App\Mail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Http\Request;
use Illuminate\Database\QueryException;
use App\Bigmapmapping;
use App\Place;
use App\Booking;
use App\TempBooking;
use App\PromoCode;
use App\TempbookingCard;
use App\SettingAdmin;
use App\Mail\SendMail;

use DateTime;

class PagesController extends Controller
{

    public function error404(){
        return view('error404');
    }

	public function booking404(){
      return view('booking404');
    }

    public function regulationsview(){
      $map_coods = Bigmapmapping::orderBy('id')->get();
      $maparray = array('map_coods' => $map_coods);
      return view('regulations')->with('maparray', $maparray);
    }

    public function userPrivacyView(){
      $map_coods = Bigmapmapping::orderBy('id')->get();
      $maparray = array('map_coods' => $map_coods);
      return view('privacy')->with('maparray', $maparray);
    }

    public function userpricesView(){
      $map_coods = Bigmapmapping::orderBy('id')->get();
      $set_admin = SettingAdmin::orderBy('id')->first();
      $maparray = array('map_coods' => $map_coods,'set_admin' => $set_admin);

      return view('prices')->with('maparray', $maparray);
    }

    public function randompageView(){
        $map_coods = Bigmapmapping::orderBy('id')->get();
        $set_admin = SettingAdmin::orderBy('id')->first();
        $maparray = array('map_coods' => $map_coods,'set_admin' => $set_admin);
        return view('Temp')->with('maparray', $maparray);
    }

    public function erase($place_id,$place_name){

      $booking = Booking::where('place_id',$place_id)->first();
      $temp_book = TempBooking::where('place_id',$place_id)->first();
      $temp_book->makeFree($booking->place_id, $booking->checkin);
      $places = Place::orderBy('id');
      
      return redirect()->route('user.viewsmallplace', $place_name);
    }

    public function index(){
      $map_coods = Bigmapmapping::orderBy('id')->get();
      $allplaces = Place::inRandomOrder()->get();

      $maps = Bigmapmapping::inRandomOrder()->limit('3')->get();

      $set_admin = SettingAdmin::orderBy('id')->first();

      $maparray = array('map_coods' => $map_coods, 'maps' => $maps, 'set_admin' => $set_admin);
      return view('userpages.index')->with('maparray', $maparray);
    }

    public function contact(){
      $map_coods = Bigmapmapping::orderBy('id')->get();
      $maparray = array('map_coods' => $map_coods);
      return view('userpages.contact')->with('maparray', $maparray);
    }

 public function createbooking($place_id, $checkin, $checkout, $error_msg){

      if(Auth::user()){
        $booking = new Booking;
        $booking->place_id = $place_id;
        $booking->user_checkin = $checkin;
        $booking->user_checkout = $checkout;
        $t = time();
        //make valid URL
        $set_admin = new SettingAdmin;
        // $set_admin->bookingURLvalidation($checkin, $checkout);
        // return;
        $set_admin->max_no_days = 10;
        if(!$set_admin->bookingURLvalidation($checkin, $checkout)){
          return redirect()->route('error.404');
        }



        if(!$booking->check_availability()){
          return redirect()->route('error.404');
        }

        //Engaged the place for 15 min
        $temp_book = new TempBooking;
        $temp_book->makeEngaged($place_id, $checkin);

        $map_coods = Bigmapmapping::orderBy('id')->get();
        $place = Place::where('place_id',$place_id)->first();
        $set_admin = SettingAdmin::orderBy('id')->first();
        $place->price = $set_admin->adult1_price;
        $maparray = array('map_coods' => $map_coods, 'place' => $place, 'checkin' => $checkin, 'checkout'=> $checkout, 'set_admin' => $set_admin, 'error_msg'=> $error_msg);
        return view('userpages.bookingplace')->with('maparray', $maparray);

      }



      $booking = new Booking;
      $booking->place_id = $place_id;
      $booking->user_checkin = $checkin;
      $booking->user_checkout = $checkout;
      $t = time();
      //make valid URL
      $set_admin = new SettingAdmin;
      // $set_admin->bookingURLvalidation($checkin, $checkout);
      // return;
      if(!$set_admin->bookingURLvalidation($checkin, $checkout)){
        return redirect()->route('error.404');
      }

      if(!$booking->check_availability()){
        return redirect()->route('error.404');
      }

      //if($set_admin->checkBookingTime($t, $booking->user_checkin)){

		//  echo ($booking->user_checkin);
		 // exit;

      //  return redirect()->route('booking.404');
     // }


      //Engaged the place for 15 min
      $temp_book = new TempBooking;
      $temp_book->makeEngaged($place_id, $checkin);

      $map_coods = Bigmapmapping::orderBy('id')->get();
      $place = Place::where('place_id',$place_id)->first();
      $set_admin = SettingAdmin::orderBy('id')->first();
      $place->price = $set_admin->adult1_price;
      $maparray = array('map_coods' => $map_coods, 'place' => $place, 'checkin' => $checkin, 'checkout'=> $checkout, 'set_admin' => $set_admin, 'error_msg'=> $error_msg);
      return view('userpages.bookingplace')->with('maparray', $maparray);
    }

    public function confirmbookingpaymentstripe(Request $request){

      $booking = new Booking;
      $booking->place_id = $request->place_id;
      $booking->user_fullname = $request->user_fullname;
      $booking->user_surname = $request->user_fullname;
      $booking->user_email = $request->user_email;
      $booking->user_phone = $request->user_phone;
      $booking->user_no_of_guest = $request->user_no_of_guest;
      $booking->user_no_of_babies = $request->user_no_of_babies;
      if(isset($request->guest_surname1))
        $booking->guest_surname1 = $request->guest_surname1;
      if(isset($request->guest_surname2))
        $booking->guest_surname2 = $request->guest_surname2;
      if(isset($request->guest_surname3))
        $booking->guest_surname3 = $request->guest_surname3;

        if(isset($request->baby_surname1))
          $booking->baby_surname1 = $request->baby_surname1;
        if(isset($request->baby_surname2))
          $booking->baby_surname2 = $request->baby_surname2;
        if(isset($request->baby_surname3))
          $booking->baby_surname3 = $request->baby_surname3;

      $booking->user_checkin = $request->user_checkin;
      $booking->user_checkout = $request->user_checkout;
      $booking->user_promo = $request->user_promo;
      $booking->user_payment_type = $request->user_payment_type;
      $booking->user_booking_tracking_id = uniqid('negombo_', true);

      $datetime1 = new DateTime($booking->user_checkin);
      $datetime2 = new DateTime($booking->user_checkout);
      $interval = $datetime1->diff($datetime2);
      $numberofdays = $interval->format('%a');

      $discount=0;
      $place = Place::where('place_id',$booking->place_id)->first();
      $promoCode = new PromoCode;

      // ToDo calculate place price
      $set_admin = SettingAdmin::orderBy('id')->first();
      $price_temp = $set_admin->calculatePrice($booking->user_checkin, $booking->user_checkout, $booking->user_no_of_guest, $booking->user_no_of_babies);
      $place->price =  $price_temp;

      if($promoCode->checkingValidity($booking->user_promo, $place->map_name, $numberofdays) && $promoCode->usedPromoOnce($booking->user_promo, $numberofdays)){

        $discount = $promoCode->discountCalculate($booking->user_promo, $place->price);
        $place->price = $place->price - $discount;
        $booking->paid_ammount = $place->price;
      }else if(isset($request->user_promo)){
        $booking->user_promo = "0";
      }

      if(!$booking->check_availability()) return "Place is not free now";
        // \Stripe\Stripe::setApiKey ( 'sk_test_51GzT6ABiRTh77KFmRi2XDmLqkgNpgzec0HQt3txM0dFT3qqYUnwQXiXJThbThOVxIAkZElfkPbyHEkYB7qAV7dyV00SkHMtB2j' );
      \Stripe\Stripe::setApiKey('sk_test_51GzT6ABiRTh77KFmRi2XDmLqkgNpgzec0HQt3txM0dFT3qqYUnwQXiXJThbThOVxIAkZElfkPbyHEkYB7qAV7dyV00SkHMtB2j');

      $token = $request->stripeToken;
      try {
        // return $booking->paid_ammount;
        $charge = \Stripe\Charge::create([
          'amount' => $booking->paid_ammount*100,
          'currency' => $place->currency_type,
          'description' => 'Negombo charge',
          'source' => $token,
        ]);
        $booking->is_approved = 1;
        $map_coods = Bigmapmapping::orderBy('id')->get();
        $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'discount'=> $discount, 'set_admin' => $set_admin);

        \Mail::to($booking->user_email)->send(new SendMail($maparray));

        if(Auth::user()){
          $booking->creator_name = Auth::user()->name;
        }
        $booking->save();

        // make free the place after booking is confirmed
        $temp_book = new TempBooking;
        $temp_book->makeFree($booking->place_id, $booking->checkin);

        return view('userpages.confirmbooking')->with('maparray', $maparray);
      } catch (\Exception $e) {
        $map_coods = Bigmapmapping::orderBy('id')->get();
        $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'discount'=> $discount);
        return view('userpages.paymentbooking')->with('maparray', $maparray);
      }
    }

    public function confirmbookingpayment(Request $request){
      $booking = new Booking;
      $booking->place_id = $request->place_id;
      $booking->user_fullname = $request->user_fullname;
      $booking->user_surname = $request->user_fullname;
      $booking->user_email = $request->user_email;
      $booking->user_phone = $request->user_phone;
      $booking->user_no_of_guest = $request->user_no_of_guest;
      $booking->user_no_of_babies = $request->user_no_of_babies;
      if(isset($request->guest_surname1))
        $booking->guest_surname1 = $request->guest_surname1;
      if(isset($request->guest_surname2))
        $booking->guest_surname2 = $request->guest_surname2;
      if(isset($request->guest_surname3))
        $booking->guest_surname3 = $request->guest_surname3;

      if(isset($request->baby_surname1))
        $booking->baby_surname1 = $request->baby_surname1;
      if(isset($request->baby_surname2))
        $booking->baby_surname2 = $request->baby_surname2;
      if(isset($request->baby_surname3))
        $booking->baby_surname3 = $request->baby_surname3;

      $booking->user_checkin = $request->user_checkin;
      $booking->user_checkout = $request->user_checkout;
      $booking->user_payment_type = $request->user_payment_type;
      $booking->user_booking_tracking_id = uniqid('negombo_', true);

      //getting number of days

      $datetime1 = new DateTime($booking->user_checkin);
      $datetime2 = new DateTime($booking->user_checkout);
      $interval = $datetime1->diff($datetime2);
      $numberofdays = $interval->format('%a');

      $place = Place::where('place_id',$booking->place_id)->first();

      // ToDo calculate place price
      $set_admin = SettingAdmin::orderBy('id')->first();
      $price_temp = $set_admin->calculatePrice($booking->user_checkin, $booking->user_checkout, $booking->user_no_of_guest, $booking->user_no_of_babies);
      $place->price =  $price_temp;

      if($request->user_payment_type == "Agreements"){
        $booking->paid_ammount = 0;
        $booking->is_approved = 1;
      }

      if($request->user_payment_type == "Admin"){
        $booking->paid_ammount = 0;
        $place->price =0;
        $booking->is_approved = 1;
      }

      // control promo
      $promo = $request->user_promo;
      $promoCode = new PromoCode;
      $discount = 0;

      if($promoCode->checkingValidity($promo, $place->map_name, $numberofdays) && $promoCode->usedPromoOnce($promo, $numberofdays)){
        $booking->user_promo = $promo;
        $discount = $promoCode->discountCalculate($booking->user_promo, $place->price);
        $place->price = $place->price - $discount;
        $booking->paid_ammount = $place->price;
      }

      if($request->user_payment_type == "Entrance"){
        $booking->paid_ammount = $place->price;
        $booking->is_approved = 1;
      }


      if($booking->check_availability()){
        if($request->user_payment_type =="Agreements")
          $booking->is_approved = 1;
        else
          $booking->is_approved = 1;

        // send mail

        $map_coods = Bigmapmapping::orderBy('id')->get();
        $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'set_admin' => $set_admin);


        if(Auth::user()){
          $booking->creator_name = Auth::user()->name;
        }
        $booking->save();
        \Mail::to($booking->user_email)->send(new SendMail($maparray));

        // make free the place after booking is confirmed
        $temp_book = new TempBooking;
        $temp_book->makeFree($booking->place_id, $booking->checkin);

        return view('userpages.confirmbooking')->with('maparray', $maparray);
      }else{
        return redirect()->route('error.404');
      }
    }

    public function confirmbooking(Request $request){

      // check what is the payment type
      $booking = new Booking;
      $booking->place_id = $request->place_id;
      $booking->user_fullname = $request->user_fullname;
      $booking->user_surname = $request->user_surname;
      $booking->user_email = $request->user_email;
      $booking->user_phone = $request->user_phone;
      $booking->user_no_of_guest = ($request->numberofguest)+1;
      $booking->user_no_of_babies = $request->numberofbabies;
      if(isset($request->guestnames[0]))
        $booking->guest_surname1 = $request->guestnames[0];
      if(isset($request->guestnames[1]))
        $booking->guest_surname2 = $request->guestnames[1];
      if(isset($request->guestnames[2]))
        $booking->guest_surname3 = $request->guestnames[2];

      if(isset($request->guestnamesbabies[0]))
        $booking->baby_surname1 = $request->guestnamesbabies[0];
      if(isset($request->guestnamesbabies[1]))
        $booking->baby_surname2 = $request->guestnamesbabies[1];
      if(isset($request->guestnamesbabies[2]))
        $booking->baby_surname3 = $request->guestnamesbabies[2];


      $booking->user_checkin = $request->t_start;
      $booking->user_checkout = $request->checkout_temp;
      // $booking->user_promo = $request->promocode;
      $datetime1 = new DateTime($booking->user_checkin);
      $datetime2 = new DateTime($booking->user_checkout);
      $interval = $datetime1->diff($datetime2);
      $numberofdays = $interval->format('%a');

      $booking->user_payment_type = $request->payment_type;
      if($booking->user_payment_type == "Credit Card"){
        $booking->user_booking_tracking_id = uniqid('negombo_', true);
        $booking->user_booking_tracking_id = str_replace('.', '_', $booking->user_booking_tracking_id);
      }else if($booking->user_payment_type == "Paypal"){
        $booking->user_booking_tracking_id = uniqid('negombo_', true);
        $booking->user_booking_tracking_id = str_replace('.', '_', $booking->user_booking_tracking_id);
      }
      // promo code handaling
      $place = Place::where('place_id',$booking->place_id)->first();
      $promo = $request->promocode;
      $promoCode = new PromoCode;
      $discount = 0;
      // ToDo calculate place price
      $set_admin = SettingAdmin::orderBy('id')->first();
      $price_temp = $set_admin->calculatePrice($booking->user_checkin, $booking->user_checkout, $booking->user_no_of_guest, $booking->user_no_of_babies);
      $place->price =  $price_temp;




      if($promoCode->checkingValidity($promo, $place->map_name, $numberofdays) && ($promoCode->checkUsers($promo, $booking->user_no_of_guest, $booking->user_no_of_babies) && ($promoCode->checkPromoValid($promo)))){

        $booking->user_promo = $promo;

        $discount = $promoCode->discountCalculate($booking->user_promo, $place->price);
        $place->price = $place->price - $discount;
        $booking->paid_ammount = $place->price;

	  }else if($booking->user_payment_type == "Agreements"){
        return redirect()->route('user.createbooking', ['place_id' => $booking->place_id, 'checkin' => $booking->user_checkin, 'checkout' => $booking->user_checkout, 'error_msg' => 1]);
      }else if($booking->user_payment_type == "Admin"){
        $place->price = 0;
      }else if(isset($request->promocode)){
        $booking->user_promo = "0";
      }



      if($booking->check_availability()){
        $map_coods = Bigmapmapping::orderBy('id')->get();
        $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'discount'=> $discount);
        if($booking->user_payment_type == "Credit Card"){
			if($request->promocode != null) {
				        return redirect()->route('user.createbooking', ['place_id' => $booking->place_id, 'checkin' => $booking->user_checkin, 'checkout' => $booking->user_checkout, 'error_msg' => 7]);
			}
			$booking->paid_ammount = $place->price;
          $paymentCard = $booking->paywithCard(floatval($booking->paid_ammount));
          $temp_cardPayment = new TempbookingCard;
          $temp_cardPayment->loadAndSavedata($booking, $paymentCard['paymentID']);
          $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'discount'=> $discount, 'paymentCardUrl' => $paymentCard['redirect']);
        }
        return view('userpages.paymentbooking')->with('maparray', $maparray);
      }else{
        return redirect()->route('error.404');
      }
    }


    public function confirmbookingpaymentpaypal($tracking_id){
        $tracking_id = trim($tracking_id);
        $booking = Booking::where('user_booking_tracking_id', $tracking_id)->first();

        if(!isset($booking)){
          return redirect()->route('error.404');
        }
        $place = Place::where('place_id',$booking->place_id)->first();
        $map_coods = Bigmapmapping::orderBy('id')->get();
        $set_admin = SettingAdmin::orderBy('id')->first();
        $maparray = array('place'=> $place, 'map_coods' => $map_coods, 'booking'=> $booking, 'set_admin' => $set_admin);

        return view('userpages.confirmbooking')->with('maparray', $maparray);
    }

    public function viewsmallplace($map_name, Request $req){
      $set_admin = SettingAdmin::orderBy('id')->first();
      $map_coods = Bigmapmapping::orderBy('id')->get();
      $checkin_date = $req->t_start;
      if($checkin_date=="null")
        return redirect()->route('user.viewsmallplace', $map_name);
      $nmofdays = ($req->no_of_day)-1;

      if(number_format($req->no_of_day)<=0)
        $nmofdays = 0;
      $checkout_date = $checkin_date;
      if(isset($req->no_of_day)){
        $date = $checkin_date;
        $date = strtotime($date);
        $date = strtotime("+".$nmofdays." day", $date);
        $checkout_date = date('Y-m-d', $date);
      }

      //
      // $map_coods = Bigmapmapping::orderBy('id')->get();
      $all_places = Place::where('map_name', $map_name)->get();
      $places = array();
      if(isset($req->t_start)){
        $booking = new Booking;
        foreach ($all_places as $place) {
          if($place->status == -1){
            array_push($places, $place);
            continue;
          }
          $place->status = 0;
          $place->status = $booking->place_is_available($place->place_id, $checkin_date, $checkout_date);
          $place->status = $booking->place_is_available_subs($place->place_id, $checkin_date, $checkout_date, $place->status);

          array_push($places, $place);
        }
      }else{
        $places = $all_places;
      }
      if(Auth::user()){
        if(number_format($req->no_of_day)>$set_admin->max_no_days && Auth::user()->role != "admin"){
          $err_msg= "error";
          // return redirect()->route('user.viewsmallplace', $map_name)->with('err_msg', $err_msg);
          $maparray = array('map_name' => $map_name, 'map_coods' => $map_coods, 'places'=> $places, 'set_admin'=> $set_admin, 'err_msg' => $err_msg);
          return view('userpages.smallmap')->with('maparray', $maparray);
        }
      }else if(number_format($req->no_of_day)>$set_admin->max_no_days){
        $err_msg= "error";
        // return redirect()->route('user.viewsmallplace', $map_name)->with('err_msg', $err_msg);
        $maparray = array('map_name' => $map_name, 'map_coods' => $map_coods, 'places'=> $places, 'set_admin'=> $set_admin, 'err_msg' => $err_msg);
        return view('userpages.smallmap')->with('maparray', $maparray);

      }

      $maparray = array('map_name' => $map_name, 'map_coods' => $map_coods, 'places'=> $places, 'checkin_date' => $checkin_date, 'checkout_date' => $checkout_date, 'set_admin'=> $set_admin);
      return view('userpages.smallmap')->with('maparray', $maparray);
    }

}
