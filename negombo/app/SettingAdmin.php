<?php

namespace App;

use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use App\Booking;

class SettingAdmin extends Model
{
    //
    public function calculatePrice($checkin, $checkout, $numOfadults, $numOfbabies){
      $numOfdays = date_diff(date_create($checkin), date_create($checkout));
      $numOfdays->d = $numOfdays->d+1;
      $price_tm = 0;
      for ($counter=0; $counter < $numOfdays->d; $counter++) {
          if(strtotime($checkin)>=strtotime($this->hi_season_start) && strtotime($checkin)<=strtotime($this->hi_season_end)){
              // time for high season
              if($numOfadults == 1 && $numOfbabies == 0){
                $price_tm += $this->adult1_price;
              }else if($numOfadults == 2 && $numOfbabies == 0){
                $price_tm += $this->adult2_price;
              }else if($numOfadults == 3 && $numOfbabies == 0){
                $price_tm += $this->adult3_price;
              }else if($numOfadults == 4 && $numOfbabies == 0){
                $price_tm += $this->adult4_price;
              }else if($numOfadults == 1 && $numOfbabies == 1){
                $price_tm += $this->adult1_1baby_price;
              }else if($numOfadults == 1 && $numOfbabies == 2){
                $price_tm += $this->adult1_2baby_price;
              }else if($numOfadults == 1 && $numOfbabies == 3){
                $price_tm += $this->adult1_3baby_price;
              }else if($numOfadults == 2 && $numOfbabies == 1){
                $price_tm += $this->adult2_1baby_price;
              }else if($numOfadults == 2 && $numOfbabies == 2){
                $price_tm += $this->adult2_2baby_price;
              }else if($numOfadults == 3 && $numOfbabies == 1){
                $price_tm += $this->adult3_1baby_price;
              }
          }else{
              // time for low season price
              if($numOfadults == 1 && $numOfbabies == 0){
                $price_tm += $this->lw_adult1_price;
              }else if($numOfadults == 2 && $numOfbabies == 0){
                $price_tm += $this->lw_adult2_price;
              }else if($numOfadults == 3 && $numOfbabies == 0){
                $price_tm += $this->lw_adult3_price;
              }else if($numOfadults == 4 && $numOfbabies == 0){
                $price_tm += $this->lw_adult4_price;
              }else if($numOfadults == 1 && $numOfbabies == 1){
                $price_tm += $this->lw_adult1_1baby_price;
              }else if($numOfadults == 1 && $numOfbabies == 2){
                $price_tm += $this->lw_adult1_2baby_price;
              }else if($numOfadults == 1 && $numOfbabies == 3){
                $price_tm += $this->lw_adult1_3baby_price;
              }else if($numOfadults == 2 && $numOfbabies == 1){
                $price_tm += $this->lw_adult2_1baby_price;
              }else if($numOfadults == 2 && $numOfbabies == 2){
                $price_tm += $this->lw_adult2_2baby_price;
              }else if($numOfadults == 3 && $numOfbabies == 1){
                $price_tm += $this->lw_adult3_1baby_price;
              }

          }
          $nextday = date('Y-m-d', strtotime("+1 day", strtotime($checkin)));
          $checkin = $nextday;
      }


      return $price_tm;
    }

    public function recentActivaty($numOf){
        $bookings = Booking::orderByDesc('id')->limit($numOf)->get();
        return $bookings;
    }
	
	
    public function checkBookingTime($bookingTime){

      $set_admin = SettingAdmin::orderBy('id')->first();

      $closing_time =   strtotime($set_admin->closing_time);

      if($bookingTime > $closing_time)
      {
        return true;
      }
      else
      {
        return false;
      }


    }


    public function bookingURLvalidation($checkin, $checkout){

      if(isset($checkin) && isset($checkout) && $checkout >= $checkin){
        $set_admin = SettingAdmin::orderBy('id')->first();


       if(Auth::user()){
          $makestr = '+'.($set_admin->max_no_days + 10)." day";
        }
        else{
          $makestr = '+'.($set_admin->max_no_days-1)." day";
        }
        $close_h = date('H', strtotime($set_admin->closing_time));
        $close_hBig = date('H', strtotime($set_admin->closing_time)+60*60);
        $close_m = date('i', strtotime($set_admin->closing_time));
        if((date('H')>=$close_h && date('i')>=$close_m) || (date('H')>=$close_hBig)){
          $today = date("Y-m-d H:i");
          $startday = date("Y-m-d", strtotime("+2 day"));
          $makestr = '+'.($set_admin->max_no_days+1)." day";
        }else{
          $today = date("Y-m-d H:i");
          $startday = date("Y-m-d", strtotime("+1 day"));
        }
        //
        $endday = date("Y-m-d", strtotime($checkin.$makestr));

        if(strtotime($startday)<=strtotime($checkin) && strtotime($endday)>=strtotime($checkout)){
          return true;
        }
      }
      return false;
    }

}
