@extends('layouts.usermaster')

@section('section')
  <div class="container-fluid padding20">
    <div class="row">
      @if(session()->has('bookinErrorMsg'))
        <div class="col alert alert-danger ">
          {{  __( session('bookinErrorMsg'))  }}
        </div>
      @endif
    </div>
    <div class="row">
      <div class="col-sm-1">
      </div>
      <div class="col-sm-4">
      <h3> Time remaining: <b id="countdown"></b></h3>
        @include('layouts.bookingplacedetails')
      </div>
      <div class="col-sm-6">
        {{-- booking form --}}
        @include('layouts.bookingform')
      </div>
      <div class="col-sm-1">
      </div>
    </div>
    
  </div>
  
<script>// Set the countdown time to 15 minutes (900 seconds)
var countdownTime = 900;

// Define a function to update the countdown every second
var countdown = setInterval(function() {
  
  // Get the minutes and seconds left in the countdown
  var minutes = Math.floor(countdownTime / 60);
  var seconds = countdownTime % 60;
  
  // Add leading zeros to the minutes and seconds if necessary
  if (minutes < 10) {
    minutes = "0" + minutes;
  }
  if (seconds < 10) {
    seconds = "0" + seconds;
  }
  
  // Display the remaining time in a message
  console.log("Time remaining: " + minutes + ":" + seconds);
  
  // Decrement the countdown time by one second
  countdownTime--;
  
  // If the countdown reaches zero, stop the interval and display a message
  if (countdownTime < 0) {
    clearInterval(countdown);
    alert("Time is over, redirection to the homepage")
    //window.location.href="http://localhost/negombo/index.php";
    window.location.href="{{ route('user.createbooking.erase', ['place_id' =>$maparray['place']->place_id,'place_name' =>  $maparray['place']->map_name ]) }}";
  }
  // Update the HTML element with the countdown
  document.getElementById('countdown').innerHTML =  minutes + ":" + seconds;
}, 1000);
    

</script>
@endsection