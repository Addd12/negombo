@php
  $imgpath = array();
  array_push($imgpath, 'images/places/spiaggia.jpg');
  array_push($imgpath, 'images/places/balzeAlte.jpg');
  array_push($imgpath, 'images/places/balzebasse.jpg');
  array_push($imgpath, 'images/places/zonatermale.jpg');
  array_push($imgpath, 'images/places/zonamare.jpg');
  $icc=1;
@endphp

<style>
  .wrapper .container .top {
    height: 72%;
    width: 100%;
    -webkit-background-size: 100%;
    -moz-background-size: 100%;
    -o-background-size: 100%;
    background-size: 100%;
  }
</style>



<div class="row">
  @foreach ($maparray['maps'] as $map)
    @if ($map->map_name == "Spiaggia")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[0]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Balze Alte")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[1]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Balze basse")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[2]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Zona Termale")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[3]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Zona Mare")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[4]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Arco")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[4]) }}) no-repeat center center;
          }
      </style>
    @endif
    @if ($map->map_name == "Solarium")
      <style>
          .top{{ $icc }}{
            background: url({{ asset($imgpath[2]) }}) no-repeat center center;
          }
      </style>
    @endif

      <div class="col-sm-4 place_card_style">

        <div class="wrapper">
          <div class="container">
            <div class="top top{{ $icc }}"></div>
            <div class="bottom">
              <div class="left">
                <div class="details">
                  <h6>{{ $map->map_name }}</h6>
                </div>
                <a class="buy" href="/negombo-master/viewplaces/{{ $map->map_name }}"><i class="material-icons" aria-hidden="true">book</i></a>
              </div>
            </div>
          </div>
          <div class="inside">
            <div class="icon"><i class="material-icons">info_outline</i></div>
            <div class="contents">

              <span><strong>{{ __('Area') }}: {{ $map->map_name }}</strong></span><br>
              {{-- high season range price --}}

              @if (strtotime($maparray['set_admin']->hi_season_start)<=strtotime("today") && strtotime($maparray['set_admin']->hi_season_end)>=strtotime("today"))
                <span>1 {{ __('Adult') }}: {{ $maparray['set_admin']->adult1_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>2 {{ __('Adults') }}: {{ $maparray['set_admin']->adult2_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>3 {{ __('Adults') }}: {{ $maparray['set_admin']->adult3_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>4 {{ __('Adults') }}: {{ $maparray['set_admin']->adult4_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br><br>
                <span>1 {{ __('Adult')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->adult1_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>2 {{ __('Adults')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->adult2_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>3 {{ __('Adults')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->adult3_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>4 {{ __('Adults')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->adult4_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              @else
                <span>1 {{ __('Adult') }}: {{ $maparray['set_admin']->lw_adult1_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>2 {{ __('Adults') }}: {{ $maparray['set_admin']->lw_adult2_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>3 {{ __('Adults') }}: {{ $maparray['set_admin']->lw_adult3_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>4 {{ __('Adults') }}: {{ $maparray['set_admin']->lw_adult4_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>1 {{ __('Adult')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->lw_adult1_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>2 {{ __('Adults')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->lw_adult2_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>3 {{ __('Adults')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->lw_adult3_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
                <span>4 {{ __('Adults')." & 1 ".__('Baby') }}: {{ $maparray['set_admin']->lw_adult4_1baby_price }} <i class="fa fa-eur" aria-hidden="true"></i></span><br>
              @endif
              <br>
              <a href="/negombo-master/viewplaces/{{ $map->map_name }}"><strong style="color:white;">{{ __('Book now!') }}</strong></a>
            </div>
          </div>
        </div>
      </div>
      @php
        $icc = $icc+1;
      @endphp
  @endforeach
</div>
