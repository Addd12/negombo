<h2>{{ __('Place Details') }}</h2>
<hr>

<div class="card">
  <div class="card-body">
      <span>{{ __('Place ID') }}: </span><span>#{{ $maparray['place']->place_id }}</span><br>
      <span>{{ __('Place Name') }}: </span><span>{{ $maparray['place']->place_name }}</span><br>
      <span>{{ __('Area') }}: </span><span>{{ $maparray['place']->map_name }}</span><br>
      <span>{{ __('From') }} {{ date("d/m/Y", strtotime($maparray['checkin'])) }} {{ __('to') }} {{ date("d/m/Y", strtotime($maparray['checkout'])) }} </span><br>

  </div>
</div><br>

<div class="card">
  <div class="card-header">
      <span><strong>{{ __('Place Description') }}</strong></span>
  </div>
  <div class="card-body">
      <span><i class="fa fa-map-marker" aria-hidden="true"></i> </span> <span><a target="_blank" href="https://www.google.com/maps/place/{{ $maparray['place']->coordsn }},{{ $maparray['place']->coordse }}">google.com/maps/place/{{ $maparray['place']->coordsn }},{{ $maparray['place']->coordse }}</a></span>
  </div>
</div><br>
{{-- price card --}}
<center>
  <div class="card">
    <div class="card-header bg-success" id="price_style">
      <h3><strong>{{ __('Prices') }}</strong></h3>
      <!-- <a href="{{ route('user.prices') }}" style="color:white;" target="_blank">{{ __('Look at the price table') }}</a> -->



    </div>
    <div class="card-body">
      <h6 class="text-justify"><strong>{{ __('IMPORTANT') }}: </strong>{{ __('At the time of payment, enter Credit Card details, at the end of the operation you must remain on the negombo.it website until the booking confirmation is printed') }}.</h6>
      <h6 class="text-justify">{{ __('Receipt of payment without booking confirmation from the negombo.it site does not entail the actual assignment of the seat') }}.</h6>
      <h6 class="text-justify text-danger">{{ __('We inform you that having purchased the entrance ticket (s) to the Park with reservation, as a confirmation deposit, it will not be possible to accept requests for reimbursement, modification or cancellation') }}.</h6>
    </div>
  </div><br>
</center>
