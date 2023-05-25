<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use App\Booking;

class TempbookingCard extends Model
{
    //

    public function loadAndSavedata(Booking $booking, $paymentID){
      $this->place_id = $booking->place_id;
      $this->user_fullname = $booking->user_fullname;
      $this->user_surname = $booking->user_surname;
      $this->user_email = $booking->user_email;
      $this->user_phone = $booking->user_phone;
      $this->user_no_of_guest = $booking->user_no_of_guest;
      $this->user_no_of_babies = $booking->user_no_of_babies;
      $this->user_checkin = $booking->user_checkin;
      $this->user_checkout = $booking->user_checkout;
      $this->user_promo = $booking->user_promo;
      $this->user_payment_type = $booking->user_payment_type;
      $this->user_booking_tracking_id = $booking->user_booking_tracking_id;
      $this->paid_ammount = $booking->paid_ammount;
      $this->user_card_paymentid = $paymentID;
      $this->save();
    }
}
