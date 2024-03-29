<h2>{{ __('Booking Reservation') }}</h2>
<hr>
<form action="{{ route('user.createbooking.confirm') }}" method="POST" id="booking_inputform">
  {{ csrf_field() }}
  <h3><u>{{ __('Personal Information') }}</u></h3>
  <div class="form-group">
    <input type="hidden" id="place_id" name="place_id" value="{{ $maparray['place']->place_id }}">
    <input type="hidden" id="checkout_temp" name="checkout_temp" value="{{ $maparray['checkout'] }}">

    <label for="fullname">{{ __('Name and Surname of the person making the reservation and payment') }}</label>
    <input type="text" class="form-control booking_inp_textbox_style" name="user_surname" placeholder="{{ __('Full Name') }}" required autocomplete="off">
    <small id="emailHelp" class="form-text text-muted">{{ __("We'll never share your personal information with anyone else") }}.</small>
  </div>
  <div class="form-group">
    <label for="email">{{ __('Email address') }}</label>
    <input type="email" class="form-control booking_inp_textbox_style" name="user_email" aria-describedby="emailHelp" placeholder="{{ __('Email address') }}">
    <small id="emailHelp" class="form-text text-muted">{{ __('Booking Tracking Number will be send in your email address') }}.</small>
  </div>
  <div class="form-group">
    <label for="phone_number">{{ __('Phone') }}</label>
    <input type="tel" id="phone" class="form-control" name="user_phone" required>
  </div>
  <h3><u>{{ __('Booking Information') }}</u></h3>
  <p style="text-align: justify;">{{ __('Children under 1 m in height enter for free, for children from 1 m to 1.40 m high the child rate applies, children over 1.40 m in height are considered adults and can access all pools of the park.') }}</p>
  <div class="form-group">
    <label for="numberofguest">{{ __('Number of adults') }}[1-4]:</label>
    <select class="form-control booking_inp_textbox_style" id="numberofguest" name="numberofguest" onchange="addFields(this.value);">
      <option value="0" active>1</option>
      <option value="1">2</option>
      <option value="2">3</option>
      <option value="3">4</option>
    </select>
  </div>
  <div class="form-group">
    <label for="numberofguest">{{ __('Number of babies') }}[1-4]:</label>
    <select class="form-control booking_inp_textbox_style" id="numberofbabies" name="numberofbabies" onchange="addFields2(this.value);">
      <option value="0" active>0</option>
      <option id="hidden_op_style1" value="1">1</option>
      <option id="hidden_op_style2" value="2">2</option>
      <option id="hidden_op_style3" value="3">3</option>
      <option id="hidden_op_style4" value="4">4</option>
    </select>
  </div>
  <div class="form-group">
    <label for="surename">Nominativo 1 Nome Cognome:</label>
    <input class="form-control booking_inp_textbox_style" type="text" name="user_fullname" required/>
  </div>
<!--   <div class="containeraddinput">
    {{-- dynamic input surname using javascript --}}
  </div>
  <div class="containeraddinput2">
    {{-- dynamic input surname using javascript --}}
  </div> -->
  {{-- <div class="form-group"> --}}
   {{-- <label >{{ __('Booking Date') }}</label><br> --}}
   {{-- <input type="hidden" name="t_start" value="{{ $maparray['checkin'] }}">
   <input type="hidden" name="t_end" value="{{ $maparray['checkout'] }}"> --}}
   <div class="t-datepicker" style="display:none;" id="booking_day_start"><span style="display:none;" class="t-check-in" name="booking_day_start"></span><span style="display:none;" name="booking_day_end" class="t-check-out"></span></div>
   {{-- <input id="booking_day_start" placeholder="DD-MM-YY" name="booking_day_start" class="form-control booking_inp_textbox_style"> --}}
 {{-- </div><br><br> --}}
  <div class="form-group">
   <label >{{ __('Promo Code') }}</label>
   @if ($maparray['error_msg']==1)
     <input id="promoCode" type="text" name="promocode" class="form-control booking_inp_textbox_style" autofocus>
     <label class="text-danger"><li>{{ __('Promo Error for') }} {{ __('Agreements') }}</li></label>
     @elseif ($maparray['error_msg']==7)
     <input id="promoCode" type="text" name="promocode" class="form-control booking_inp_textbox_style" autofocus>
     <label class="text-danger"><li>non puoi selezionare l'opzione della carta di credito con un codice promozionale.</li></label>
   @else
     <input id="promoCode" type="text" name="promocode" class="form-control booking_inp_textbox_style">
   @endif

  </div>
  <div class="form-group">
    <label >{{ __('Payment Type') }}: </label><br>
    {{-- <input type="radio" name="payment_type" value="Paypal" checked>
    <label for="Paypal" class="booking_payment_type_style">{{ __('Paypal') }}</label> --}}
    {{-- <input type="radio" name="payment_type" value="Stripe" disabled>
    <label for="Stripe" class="booking_payment_type_style">{{ __('Stripe') }}</label> --}}
    <input type="radio" name="payment_type" value="Credit Card" checked>
    <label for="Card" class="booking_payment_type_style">{{ __('Credit Card') }}</label>
    <input type="radio" name="payment_type" value="Agreements">
    <label for="Subscribe" class="booking_payment_type_style">{{ __('Agreements') }}</label>
    @auth
      <input type="radio" name="payment_type" value="Entrance">
      <label for="Entrance" class="booking_payment_type_style">{{ __('Entrance') }}</label>
      @if (Auth::user()->role == "admin")
        <input type="radio" name="payment_type" value="Admin">
        <label for="Entrance" class="booking_payment_type_style">{{ __('Admin') }}</label><br>
      @else
        <br>
      @endif
    @endauth

  </div>
  @guest
    <div class="form-group">
      <label for="termsandcondition"><input type="checkbox" id="aggreedchkid" name="tandr" value="aggreed" required> {{ __('I agree to the') }} <strong> Negombo </strong><a target="_blank" style="color:green;" href="{{ route('user.regulations') }}">{{ __('Terms and Regulations') }}</a>.</label><br>
      <label for="termsandcondition"><input type="checkbox" id="aggreedchkid" name="tandr" value="aggreed" required><a target="_blank" style="color:green;" href="{{ route('user.privacy') }}">{{ __('Privacy: ') }}</a>{{ __('Accetto le condizioni per il trattamento dati.') }}</label><br>
      <span>{{ __('All payments are accepted as confirmation of deposit') }}.</span><br><br>
    </div>
  @endguest

  <button type="submit" style="float:right;" class="btn btn-success">{{ __('Continue') }}</button>

<button type="button" style="float:left;" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
  Cancel
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       Are you sure to leave this page ?
      </div>
      <!-- onClick="location.href='http://localhost/negombo/index.php/viewplaces/{{ $maparray['place']->map_name }}'"-->
      <div class="modal-footer">
        <a  href="{{ route('user.createbooking.erase', ['place_id' =>$maparray['place']->place_id,'place_name' =>  $maparray['place']->map_name ]) }}" class="btn btn-danger">{{ __('Yes') }}</a>
        <button type="button" class="btn btn-primary"  data-dismiss="modal">{{ __('No') }}</button>
      </div>
    </div>
  </div>
  
</div>
</form>

{{-- make some dynamic javascript --}}

<script>
var today = new Date();
tomorrow = new Date(today);
tomorrow.setDate(tomorrow.getDate() + {{ $maparray["set_admin"]->max_no_days }});
var date = tomorrow.getFullYear()+'-'+(tomorrow.getMonth()+1)+'-'+tomorrow.getDate();
   $(document).ready(function(){
      // Call global the function
      $('.t-datepicker').tDatePicker({
        // options here
        titleDateRange :'{{ __('day') }}',
        titleDateRanges:'{{ __('days') }}',
        titleToday     :'{{ __('Today') }}',
        limitDateRanges    : {{ $maparray["set_admin"]->max_no_days+1 }},
        dateCheckIn: '{{ $maparray['checkin'] }}',
        dateCheckOut: '{{ $maparray['checkout'] }}',
        numCalendar : 1,
        endDate: date,
      });
    });

    var input = document.querySelector("#phone");
    var iti = window.intlTelInput(input, {
      utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.3/js/utils.js",
      allowExtensions: true,
      initialCountry: 'it',
           geoIpLookup: function(callback) {
               $.get('https://ipinfo.io?token=c9c5496fc86806', function() {}, "jsonp").always(function(resp) {
                 var countryCode = resp.country;
                 // console.log(countryCode);
                 callback(countryCode);
               });
             },
    });


</script>
