<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Booking;

class Place extends Model
{
    //

    public function recmd_place(){
      $booking = new Booking;
      $booking->place_id = $this->place_id;
      $booking->user_checkin = date("Y-m-d");
      $booking->user_checkout = date("Y-m-d", strtotime('+30 days'));
      if($booking->check_availability())
        return true;
      return false;
    }

}
