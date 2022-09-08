<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Database\QueryException;
use Illuminate\Support\MessageBag;
use App\Place;
use App\Booking;
use App\User;
use App\PromoCode;
use App\Bigmapmapping;
use App\SettingAdmin;
use App\Trans;

use DateTime;

class AdminPagesController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

  public function dashboard(Request $request)
  {
    $set_admin = SettingAdmin::orderBy('id')->first();

    $numberofplace = Place::orderBy('places_id')->count();
    $numberofbookings = Booking::orderBy('id')->count();
    $numberofAggr = Booking::where('user_payment_type', 'Agreements')->count();
    $numberofEntrance = Booking::where('user_payment_type', 'Entrance')->count();

    $earningEntrance = Booking::where('user_payment_type', 'Entrance')->sum('paid_ammount');
    $earningAgr = Booking::where('user_payment_type', 'Agreements')->sum('paid_ammount');
    $earningPaypal = Booking::where('user_payment_type', 'Paypal')->sum('paid_ammount');
    $earningStripe = Booking::where('user_payment_type', 'Stripe')->sum('paid_ammount');
    $earningcard = Booking::where('user_payment_type', 'Credit Card')->sum('paid_ammount');

    $places_name = Place::orderBy('place_id')->get('place_name');





    $rec_act_bookings = $set_admin->recentActivaty(7);

    if (isset($request->place_id)) {
      $error_msg = array();
      if ($request->t_start == "null") {
        array_push($error_msg, "Check-in date is not set.");
      }
      $checkin_date = $request->t_start;
      $nmofdays = ($request->no_of_day) - 1;
      $checkout_date = $request->t_end;

      $booking_place_array = array();
      foreach ($request->place_id as $place_id) {
        array_push($booking_place_array, $place_id);
      }

      for ($i = 0; $i < count($booking_place_array); $i++) {

        $booking = new Booking;
        $booking->place_id = $booking_place_array[$i];

        $booking->user_checkin = $checkin_date;
        $booking->user_checkout = $checkout_date;
        $place = Place::where('place_id', $booking->place_id)->first();
        $isfound = Place::where('place_id', $booking->place_id)->count();
        if ($isfound <= 0)
          array_push($error_msg, "Place id is not found.");
        if ($booking->check_availability() && count($error_msg) == 0) {
          $booking->user_fullname = $request->user_fullname;
          $booking->user_surname = $request->user_fullname;
          $booking->user_email = $request->user_email;
          $booking->user_phone = $request->user_phone;
          $booking->user_no_of_guest = ($request->numberofguest) + 1;
          $booking->user_no_of_babies = $request->numberofbabies;
          if (isset($request->guestnames[0]))
            $booking->guest_surname1 = $request->guestnames[0];
          if (isset($request->guestnames[1]))
            $booking->guest_surname2 = $request->guestnames[1];
          if (isset($request->guestnames[2]))
            $booking->guest_surname3 = $request->guestnames[2];

          if (isset($request->guestnamesbabies[0]))
            $booking->baby_surname1 = $request->guestnamesbabies[0];
          if (isset($request->guestnamesbabies[1]))
            $booking->baby_surname2 = $request->guestnamesbabies[1];
          if (isset($request->guestnamesbabies[2]))
            $booking->baby_surname3 = $request->guestnamesbabies[2];
          $booking->user_booking_tracking_id = uniqid('negombo_', true);
          $booking->user_payment_type = $request->user_payment_type;
          if ($booking->user_payment_type == "Admin") {
            $booking->user_payment_type = 'Admin';
            $booking->paid_ammount = 0;
            $booking->is_approved = 1;
          } else {
            $datetime1 = new DateTime($booking->user_checkin);
            $datetime2 = new DateTime($booking->user_checkout);
            $interval = $datetime1->diff($datetime2);
            $numberofdays = $interval->format('%a');

            $booking->is_approved = 1;
            $booking->user_payment_type = 'Entrance';
            $promo = $request->promocode;
            $promoCode = new PromoCode;
            $discount = 0;
            $price_temp = $set_admin->calculatePrice($booking->user_checkin, $booking->user_checkout, $booking->user_no_of_guest, $booking->user_no_of_babies);
            $booking->paid_ammount = $price_temp;
            $place->price = $price_temp;
            if ($promoCode->checkingValidity($promo, $place->map_name, $numberofdays)) {
              $booking->user_promo = $promo;
              $discount = $promoCode->discountCalculate($booking->user_promo, $place->price);
              $place->price = $place->price - $discount;
              $booking->paid_ammount = $place->price;
              $booking->is_approved = 1;
            } else if (isset($request->promocode)) {
              array_push($error_msg, "Given Promo is not worked.");
            }
          }
        } else {
          array_push($error_msg, "Place " . $booking->place_id . " is not available for this time.");
        }

        if (count($error_msg) > 0) {
          $numberofplace = Place::orderBy('places_id')->count();
          $numberofbookings = Booking::orderBy('id')->count();
          return view('adminpages.dashboard')->with('numberofplace', $numberofplace)->with('numberofbookings', $numberofbookings)->with('set_admin', $set_admin)->with('error_msg', $error_msg)->with('rec_act_bookings', $rec_act_bookings)->with('numberofAggr', $numberofAggr)
            ->with('numberofEntrance', $numberofEntrance)
            ->with('earningEntrance', $earningEntrance)
            ->with('earningAgr', $earningAgr)
            ->with('earningPaypal', $earningPaypal)
            ->with('earningStripe', $earningStripe)
            ->with('earningcard', $earningcard)
            ->with('places_name', $places_name);
        }

        if (Auth::user()) {
          $booking->creator_name = Auth::user()->name;
        }

        $booking->save();
      }

      return redirect()->route('admin');
    }


    return view('adminpages.dashboard')->with('numberofplace', $numberofplace)->with('numberofbookings', $numberofbookings)->with('set_admin', $set_admin)->with('rec_act_bookings', $rec_act_bookings)->with('numberofAggr', $numberofAggr)->with('numberofEntrance', $numberofEntrance)
      ->with('earningEntrance', $earningEntrance)
      ->with('earningAgr', $earningAgr)
      ->with('earningPaypal', $earningPaypal)
      ->with('earningStripe', $earningStripe)
      ->with('earningcard', $earningcard)
      ->with('places_name', $places_name);
  }









    public function profileview(){
      return view('adminpages.profileview');
    }

    public function submitplace_search(Request $request){
        $startDate = date('Y-m-d');
        $endDate = date('Y-m-d');
        $startDate = $request->startDate;
        $newSDate = date("d-m-Y",  strtotime($startDate));
        $request->session()->put('startingRange', $newSDate);

        $endDate = $request->endDate;
        $newEDate = date("d-m-Y",  strtotime($endDate));
        $request->session()->put('endingRange', $newEDate);

        $places = Place::orderBy('place_id')->get();
        $booking = new Booking;
        //$Todaydate = date('Y-m-d');
        foreach ($places as $place) {
          if ($place->status == -1) {
            continue;
          }
          $place->status = $booking->place_is_available($place->place_id, $startDate, $endDate);
          $place->status = $booking->place_is_available_subs($place->place_id, $startDate, $endDate, $place->status);
        }

        return view('adminpages.viewplaces')->with('places', $places)->with('startDate', $startDate)->with('endDate', $endDate);
    }


    public function place_view(Request $request){
      $startDate = date('Y-m-d');
      $endDate = date('Y-m-d');
      if (isset($request->startDate) && isset($request->$endDate)) {
        $startDate = $request->startDate;
        $endDate = $request->endDate;
      }
      $request->session()->put('startingrange', $startDate);
      $request->session()->put('endingrange', $startDate);

      $places = Place::orderBy('place_id')->get();
      $booking = new Booking;
      // $Todaydate = date('Y-m-d');
      User::chunk(100, function ($places){
		  
		  $booking = new Booking;
          $startDate = date('Y-m-d');
          $endDate = date('Y-m-d');

        foreach ($places as $place) {
          if ($place->status == -1) {
            continue;
          }
          // $place->status =$booking->place_is_available($place->place_id, $Todaydate, $Todaydate);
          // $place->status =$booking->place_is_available_subs($place->place_id, $Todaydate, $Todaydate, $place->status);
          $place->status = $booking->place_is_available($place->place_id, $startDate, $endDate);
          $place->status = $booking->place_is_available_subs($place->place_id, $startDate, $endDate, $place->status);
        }
  
       

      });

      return view('adminpages.viewplaces')->with('places', $places)->with('startDate', $startDate)->with('endDate', $endDate);
    }

    public function quickbooking(Request $request)
    {
      $formattedStartDate = $request->qStartDate;
      $formattedEndDate = $request->qEndDate;
      $originalFormatStartDate = date("Y-m-d", strtotime($formattedStartDate));
      $originalFormatEndDate = date("Y-m-d", strtotime($formattedEndDate));

      // Saving the data
      $booking = new Booking();
      $booking->place_id = $request->qID;
      $booking->user_fullname = $request->qFullName;
      $booking->user_checkin = $originalFormatStartDate;
      $booking->user_checkout = $originalFormatEndDate;
      $booking->user_no_of_guest = $request->qNumberOfGuests;
      $booking->user_no_of_babies = $request->qNumberOfBabies;
      $booking->creator_name = $request->qCreatorName;

      //Filling Null for quick booking options
      // $booking->payer_name = $request->qCreatorName;
      $booking->user_surname = $request->qCreatorName;
      $booking->user_email = "Admin";
      $booking->user_phone = "0";
      $booking->is_approved = 1;
      $booking->user_payment_type = "Admin";
      $booking->user_booking_tracking_id = "0";




      $booking->save();

      return redirect()->route('admin.place.viewplaces');
    }


    public function staffsdelete($id){
      if(Auth::user()->role != "admin")
        return redirect()->route('error.404');
      $user = User::find($id);
      $user->delete();
      return redirect()->route('admin.staffs');

    }
    public function staffseditview($id){
      if(!Auth::user())
        return redirect()->route('error.404');
      $user = User::find($id);
      if(is_null($user))
        return redirect()->route('error.404');
      return view('adminpages.editstaff')->with('user', $user);
    }
    public function profileupdate(Request $request){
      $user_id = $request->u_id;
      $user = User::find($user_id);
      $user->name = $request->name;
      $user->email = $request->email;
      $user->role = $request->role;
      $user->save();
      return redirect()->route('admin.staffs');
    }

    public function settingsview(){
      if(Auth::user()->role != "admin")
        return redirect()->route('error.404');
      $set_admin = SettingAdmin::orderBy('id')->first();
      return view('adminpages.settings')->with('set_admin', $set_admin);
    }
    public function settingsemailContect(){
      if(Auth::user()->role != "admin")
        return redirect()->route('error.404');
      $set_admin = SettingAdmin::orderBy('id')->first();
      return view('adminpages.emailContents')->with('set_admin', $set_admin);
    }

    public function settingsemailContectupdate(Request $request){
      if(Auth::user()->role != "admin")
        return redirect()->route('error.404');
      $set_admin = SettingAdmin::find($request->id)->first();
      $set_admin->booking_email_content = $request->booking_email_content;
      $set_admin->save();
      return redirect()->route('admin.settings.email');
    }

    public function settingsupdate(Request $request){
      if(Auth::user()->role != "admin")
        return redirect()->route('error.404');
      $set_admin = SettingAdmin::find($request->id)->first();
      $set_admin->max_no_days = $request->max_no_days;
      $set_admin->closing_time = $request->closing_time;
      $set_admin->hi_season_start = $request->hi_season_start;
      $set_admin->hi_season_end = $request->hi_season_end;
      // for high season
      $set_admin->adult1_price = $request->adult1_price;
      $set_admin->adult2_price = $request->adult2_price;
      $set_admin->adult3_price = $request->adult3_price;
      $set_admin->adult4_price = $request->adult4_price;
      $set_admin->adult1_1baby_price = $request->adult1_1baby_price;
      $set_admin->adult1_2baby_price = $request->adult1_2baby_price;
      $set_admin->adult1_3baby_price = $request->adult1_3baby_price;
      $set_admin->adult2_1baby_price = $request->adult2_1baby_price;
      $set_admin->adult2_2baby_price = $request->adult2_2baby_price;
      $set_admin->adult3_1baby_price = $request->adult3_1baby_price;
      // for low season
      $set_admin->lw_adult1_price = $request->lw_adult1_price;
      $set_admin->lw_adult2_price = $request->lw_adult2_price;
      $set_admin->lw_adult3_price = $request->lw_adult3_price;
      $set_admin->lw_adult4_price = $request->lw_adult4_price;
      $set_admin->lw_adult1_1baby_price = $request->lw_adult1_1baby_price;
      $set_admin->lw_adult1_2baby_price = $request->lw_adult1_2baby_price;
      $set_admin->lw_adult1_3baby_price = $request->lw_adult1_3baby_price;
      $set_admin->lw_adult2_1baby_price = $request->lw_adult2_1baby_price;
      $set_admin->lw_adult2_2baby_price = $request->lw_adult2_2baby_price;
      $set_admin->lw_adult3_1baby_price = $request->lw_adult3_1baby_price;

      $set_admin->save();

      return redirect()->route('admin');
    }


    public function staffsview(){
      if(Auth::user()->role != "admin")
        return redirect()->route('error.404');
      $users = User::orderBy('id')->get();
      return view('adminpages.viewstaffs')->with('users', $users);
    }

    public function promocodesviews(){
      $promocodes = PromoCode::orderBy('id')->get();
      return view('adminpages.viewpromocodes')->with('promocodes', $promocodes);
    }

    public function promocodedetele($id){
      $promo = PromoCode::find($id);
      if(is_null($promo))
        return redirect()->route('error.404');
      $promo->delete();
      return redirect()->route('admin.promocodes');
    }

    public function promocodeedit($id){
      $promo = PromoCode::find($id);
      if(is_null($promo))
        return redirect()->route('error.404');
      $map_coods = Bigmapmapping::orderBy('id')->get();
      return view('adminpages.editpromo')->with('maps', $map_coods)->with('promo', $promo);
    }

    public function transaction_view(){
      $transactions = Trans::orderByDesc('id')->get();
      return view('adminpages.view_transactions')->with('transactions', $transactions);
    }

    public function promocodeadd(Request $request){

      $promoCode = new PromoCode();
      $promoCode->map_name = $request->map_name;
      $promoCode->promocode = $request->promocode;
      $promoCode->promo_user = $request->promo_user;
      $promoCode->promo_type = $request->promo_type;
      $promoCode->numberofadults = $request->numberofadults;
      $promoCode->numberofbabies = $request->numberofbabies;
      if (isset($request->numberofuse))
        $promoCode->numberofuse = $request->numberofuse;
      else
        $promoCode->numberofuse = -1;

      $promoCode->discount = $request->discount;
      try {
          $promoCode->save();
          return redirect()->route('admin.promocodes');
        } catch (\Illuminate\Database\QueryException $e) {
          $errors = new MessageBag();
          $errors->add('promocode', 'Promocode already exists.');
          return redirect()->route('admin.promocodes.create')->withErrors($errors);
        }

    }


    public function promocodeupdate(Request $request){
      $promo_temp_code = $request->id;
      $promo = PromoCode::find($promo_temp_code);
      $promo->map_name = $request->map_name;
      $promo->promo_user= $request->promo_user;
      $promo->promo_type= $request->promo_type;
      if(isset($request->numberofuse))
        $promo->numberofuse = $request->numberofuse;
      else
      $promo->numberofuse = -1;
	  $promo->numberofadults = $request->numberofadults;
      $promo->numberofbabies = $request->numberofbabies;
      $promo->discount = $request->discount;
      $promo->save();
      return redirect()->route('admin.promocodes');
    }

    public function promocodechange($id){
      $promo = PromoCode::find($id);
      if(is_null($promo))
        return redirect()->route('error.404');
      if($promo->status == 0)
        $promo->status = 1;
      else
        $promo->status = 0;
      $promo->save();
      // redial if disabled
      if($promo->numberofuse <= 0){
          return redirect()->route('admin.promocodes.edit', $id);
      }
      return redirect()->route('admin.promocodes');
    }
    public function promocodesviewcreate(){
      $map_coods = Bigmapmapping::orderBy('id')->get();
      return view('adminpages.createpromo')->with('maps', $map_coods);
    }



    public function entrance_view(){
      $Bookings = Booking::where('user_payment_type', 'entrance')->get();
      return view('adminpages.entranceview')->with('Bookings', $Bookings);
    }

    public function viewbookingdelaits($id){
      $Booking = Booking::where('id', $id)->first();
      return view('adminpages.viewbookingdelaits')->with('Booking', $Booking);
    }
    public function editbookingdelaits($id){
      $Booking = Booking::where('id', $id)->first();
      return view('adminpages.editbookingdelaits')->with('Booking', $Booking);
    }

    public function updatebookingdelaits(Request $request){
      $booking_id = $request->booking_id;
      $Booking = Booking::where('id', $booking_id)->first();
      $user_name = trim($request->user_fullname);
      // $user_surname = (strpos($user_name, ' ') === false) ? '' : preg_replace('#.*\s([\w-]*)$#', '$1', $user_name);
      $Booking->place_id= $request->place_id;
      $Booking->user_fullname = $user_name;
      $Booking->user_email = $request->user_email;
      $Booking->user_phone = $request->user_phone;
      $Booking->user_no_of_guest = $request->numberofguest + 1;
      $Booking->user_no_of_babies = $request->numberofbabies;
      if(isset($request->guestnames1))
        $Booking->guest_surname1 = $request->guestnames1;
      else{
        $Booking->guest_surname1=NULL;
      }
      if(isset($request->guestnames2))
        $Booking->guest_surname2 = $request->guestnames2;
      else{
          $Booking->guest_surname2=NULL;
      }
      if(isset($request->guestnames3))
        $Booking->guest_surname3 = $request->guestnames3;
      else{
          $Booking->guest_surname3=NULL;
      }
      if(isset($request->guestnamesbabies1))
        $Booking->baby_surname1 = $request->guestnamesbabies1;
      else{
        $Booking->baby_surname1=NULL;
      }
      if(isset($request->guestnamesbabies2))
        $Booking->baby_surname2 = $request->guestnamesbabies2;
      else{
          $Booking->baby_surname2=NULL;
      }
      if(isset($request->guestnamesbabies3))
        $Booking->baby_surname3 = $request->guestnamesbabies3;
      else{
          $Booking->baby_surname3=NULL;
      }
      // if(isset($request->guestnamesbabies4))
      //   $Booking->baby_surname4 = $request->guestnamesbabies4;
      // else{
      //     $Booking->baby_surname4=NULL;
      // }
    $Booking->user_checkin = $request->user_checkin;
    $numberofDays = $request->numberofDays - 1;
    $user_checkout = date('Y-m-d', strtotime("+" . $numberofDays . " day", strtotime($request->user_checkin)));
    $Booking->user_checkout =  $user_checkout;
    if ($Booking->check_availability()) {
      $settingAdmin = new SettingAdmin();
      // $Booking->paid_ammount = $settingAdmin->calculatePrice( $Booking->user_checkin, $user_checkout, $Booking->user_no_of_guest,  $Booking->user_no_of_babies);

      $place = Place::where('place_id', $Booking->place_id)->first();

      // ToDo calculate place price
      $set_admin = SettingAdmin::orderBy('id')->first();
      $price_temp = $set_admin->calculatePrice($Booking->user_checkin, $Booking->user_checkout, $Booking->user_no_of_guest, $Booking->user_no_of_babies);

      $place->price =  $price_temp;
      $Booking->paid_ammount = $place->price;
        $Booking->save();
        return redirect()->route('admin.booking.viewbookings');
      }else{
        return back()->withErrors(['Place is not available for this time. Please choose another dates!']);
      }
    }

    public function booking_view(){

      $Bookings = DB::table('bookings')
      ->select(
        'bookings.id AS ID',
        'bookings.place_id',
        'bookings.user_fullname',
        'bookings.user_email',
        'bookings.user_phone',
        'promo_codes.promo_type',
        'bookings.user_no_of_guest',
        'bookings.user_no_of_babies',
        'bookings.user_checkin',
        'bookings.user_checkout',
        'bookings.user_payment_type',
        'bookings.created_at'

      )
      ->take(300)
      ->leftJoin('promo_codes', 'bookings.user_promo', '=', 'promo_codes.promocode')
      ->orderByDesc('bookings.id')
      ->get();
      return view('adminpages.viewbookings')->with('Bookings', $Bookings);
    }

    public function booking_view_all(){

      $Bookings = DB::table('bookings')
      ->select(
        'bookings.id AS ID',
        'bookings.place_id',
        'bookings.user_fullname',
        'bookings.user_email',
        'bookings.user_phone',
        'promo_codes.promo_type',
        'bookings.user_no_of_guest',
        'bookings.user_no_of_babies',
        'bookings.user_checkin',
        'bookings.user_checkout',
        'bookings.user_payment_type',
        'bookings.created_at'

      )
      ->leftJoin('promo_codes', 'bookings.user_promo', '=', 'promo_codes.promocode')
      ->orderByDesc('bookings.id')
      ->get();
      return view('adminpages.viewallbookings')->with('Bookings', $Bookings);
    }
    public function deletebookingdelaits($id){
      $Booking = Booking::where('id', $id)->first();
      $Booking->delete();
      return redirect()->route('admin.booking.viewbookings');
    }
    public function subscription_view(){
      $Bookings = Booking::where('user_payment_type', 'Agreements')->get();
      return view('adminpages.subscription_view')->with('Bookings', $Bookings);
    }

    public function subscription_approve($id){
      $Booking = Booking::where('id', $id)->first();
      $Booking->is_approved = 1;
      $Booking->save();
      $Bookings = Booking::where('user_payment_type', 'Agreements')->get();
      return view('adminpages.subscription_view')->with('Bookings', $Bookings);
    }
    public function subscription_reject($id){
      $Booking = Booking::where('id', $id)->first();
      $Booking->is_approved = 0;
      $Booking->save();
      $Bookings = Booking::where('user_payment_type', 'Agreements')->get();
      return view('adminpages.subscription_view')->with('Bookings', $Bookings);
    }

    public function place_create(){
      return view('adminpages.createplace');
    }

    public function place_edit($place_id){
      $place = Place::where('place_id',$place_id)->first();
      if($place){
        return view('adminpages.editplace')->with('place', $place);
      }else{
        //handle error id
        return redirect()->route('error.404');
      }
    }

    public function place_delete($place_id){
      $place = Place::where('place_id',$place_id)->first();
      //handle error id
      if($place)
        $place->delete();
      else
        return redirect()->route('error.404');

       return redirect()->route('admin.place.viewplaces');
    }

    public function place_store(Request $request){

      $place = new Place;
      $place->place_id = $request->place_id;
      $place->place_name = $request->place_name;
      $place->map_name = $request->map_name;
      $place->co_xl = $request->co_xl;
      $place->co_yl = $request->co_yl;
      $place->co_xs = $request->co_xs;
      $place->co_ys = $request->co_ys;
      $place->coordinates = $request->coordinates;
      $place->coordsn = $request->coordsn;
      $place->coordse = $request->coordse;
      try {
        $place->save();
      } catch (\Illuminate\Database\QueryException $e) {
    // add your error messages:
        $errors = new MessageBag();
        $errors->add('place_id', 'Place id already exists.');
        return redirect()->route('admin.place.create')->withErrors($errors);
      }

      return redirect()->route('admin.place.create');
    }


    public function place_update(Request $request, $place_id){

      $place = Place::where('place_id',$place_id)->first();
      $place->place_id = $request->place_id;
      $place->place_name = $request->place_name;
      $place->map_name = $request->map_name;
      $place->co_xl = $request->co_xl;
      $place->co_yl = $request->co_yl;
      $place->co_xs = $request->co_xs;
      $place->co_ys = $request->co_ys;
      $place->coordinates = $request->coordinates;
      $place->coordsn = $request->coordsn;
      $place->coordse = $request->coordse;
      try {
        $place->save();
      } catch (\Illuminate\Database\QueryException $e) {
    // add your error messages:
        $errors = new MessageBag();
        $errors->add('place_id', 'Place id already exists.');
        return redirect()->route('admin.place.edit')->withErrors($errors);
      }

      return redirect()->route('admin.place.viewplaces');
    }


    public function changeStatus($place_id){
      $place = Place::where('place_id',$place_id)->first();
      if($place->status == -1){
        $place->status = 0;
      }else{
        $place->status = -1;
      }
      $place->save();
      return redirect()->route('admin.place.viewplaces');
    }

}
