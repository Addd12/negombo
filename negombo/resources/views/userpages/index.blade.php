{{--Navbar--}}
@extends('layouts.usermaster')

<head>
    <!-- Hotjar Tracking Code for https://beta.negombo.it/ -->
    <script>
        (function(h,o,t,j,a,r){
            h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
            h._hjSettings={hjid:3153441,hjsv:6};
            a=o.getElementsByTagName('head')[0];
            r=o.createElement('script');r.async=1;
            r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
            a.appendChild(r);
        })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
    </script>
</head>


@section('section')
    {{-- Features tried   --}}
    {{--    Image Slider--}}
    {{--    <div id="slides" class="carousel slide" data-ride="carousel">--}}
    {{--        <ul class="carousel-indicators">--}}
    {{--            <li data-target="#slides" data-slide-to="0" class="active"></li>--}}
    {{--            <li data-target="#slides" data-slide-to="1"></li>--}}
    {{--            <li data-target="#slides" data-slide-to="2"></li>--}}
    {{--        </ul>--}}
    {{--        <div class="carousel-inner">--}}
    {{--            <div class="carousel-item active">--}}
    {{--                <img src="images/places/spiaggia.jpg">--}}
    {{--                <div class="carousel-caption center">--}}
    {{--                    <h1 class="display-2">Negombo</h1>--}}
    {{--                    <h3>Spend your holiday here.</h3>--}}
    {{--                    <button type="button" class="btn btn-outline-light btn-lg">Book Now</button>--}}
    {{--                    <button type="button" class="btn btn-primary btn-lg">Get Informations</button>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--            <div class="carousel-item">--}}
    {{--                <img src="images/places/balzebasse.jpg" >--}}
    {{--            </div>--}}
    {{--            <div class="carousel-item">--}}
    {{--                <img src="images/places/zonamare.jpg">--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--    </div>--}}


    {{--    --}}{{--    Welcome section--}}
    {{--    <div class="container-fluid padding">--}}
    {{--        <div class="row welcome text-center">--}}
    {{--            <div class="col-12">--}}
    {{--                <h1 class="display-4"> Text for the clients </h1>--}}
    {{--            </div>--}}
    {{--            <hr>--}}
    {{--            <div class="col-12">--}}
    {{--                <p class="lead"> text description of Negombo text description of Negombo text description of Negombo text description of Negombo--}}
    {{--                    text description of Negombotext description of Negombo text description of Negombo vtext description of Negomo</p>--}}
    {{--            </div>--}}

    {{--        </div>--}}

    {{--    </div>--}}

    {{--    --}}{{--    3 column section--}}
    {{--    <div class="container-fluid padding">--}}
    {{--        <div class="row text-center padding20">--}}
    {{--            <div class="col-xs-12 col-sm-6 col-md-4">--}}
    {{--                <h3>View</h3>--}}
    {{--                <p>Choose location</p>--}}
    {{--            </div>--}}
    {{--            <div class="col-xs-12 col-sm-6 col-md-4">--}}
    {{--                <h3>Book</h3>--}}
    {{--                <p>Book sunbed on any location</p>--}}
    {{--            </div>--}}
    {{--            <div class="col-xs-12 col-sm-6 col-md-4">--}}
    {{--                <h3>Enjoy</h3>--}}
    {{--                <p>Be there and don't forget suncream</p>--}}
    {{--            </div>--}}


    {{--        </div>--}}
    {{--    </div>--}}

    {{--Welcome Video--}}
    <div class="container-fluid">
        <h2 id="heading_qt1">{{ __('Welcome to Negombo') }}  </h2>
        <center>
            <iframe width="1000" height="500" src="https://www.youtube.com/embed/GBGAhdeHrFA?autoplay=1&mute=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write;loop; muted; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
            </iframe>
        </center>
    </div>
    <!-- base map	 -->
    <div class="container-fluid">
        <h2 id="heading_qt1">{{ __('Book your favorite place on the map') }}</h2>
        <div class="row">
            <div class="col-sm-12">
                <div style="text-align: center;">
                    <img id="baseMapimgStyle" src="{{ asset('images/maps/mappazone.jpg') }}" alt="Workplace"
                         usemap="#workmap" height="550px" width="900px;">
                    <map name="workmap">
                        @php
                            $ind=1;
                        @endphp
                        @foreach ($maparray['map_coods'] as $map_cood)
                            <area id="{{ 'select_map_style'.$ind }}" onmouseout="this.blur();"
                                  onmouseover="this.focus();" target="" alt="{{ $map_cood->map_name }}"
                                  coords="{{ $map_cood->coordsLS }}" title=""
                                  href="{{ route('user.viewsmallplace', $map_cood->map_name) }}" shape="poly">
                            {{-- dynamic coordinate selection using javascript --}}
                            <script>
                                if (window.screen.width < 768)
                                    document.getElementById("{{ 'select_map_style'.$ind }}").coords = "{{ $map_cood->coordsSS }}";
                            </script>
                            @php
                                $ind=$ind+1;
                            @endphp
                        @endforeach
                    </map>
                </div>
            </div>
        </div>
    </div>

    {{--Concept--}}
    {{--    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">--}}
    {{--        <div class="carousel-inner">--}}
    {{--            <div class="carousel-item active">--}}
    {{--                <img src="images/places/spiaggia.jpg" class="d-block w-100" alt="...">--}}
    {{--            </div>--}}
    {{--            <div class="carousel-item">--}}
    {{--                <img src="images/places/balzebasse.jpg" class="d-block w-100" alt="...">--}}
    {{--            </div>--}}
    {{--            <div class="carousel-item">--}}
    {{--                <img src="images/places/zonamare.jpg" class="d-block w-100" alt="...">--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">--}}
    {{--            <span class="carousel-control-prev-icon" aria-hidden="true"></span>--}}
    {{--            <span class="sr-only">Previous</span>--}}
    {{--        </a>--}}
    {{--        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">--}}
    {{--            <span class="carousel-control-next-icon" aria-hidden="true"></span>--}}
    {{--            <span class="sr-only">Next</span>--}}
    {{--        </a>--}}
    {{--    </div>  --}}


    <!-- base map end	 -->
    <div class="container-fluid center">
        <h2 id="heading_qt1"    ><b>{{ __('Recommended Places') }}</b></h2>
        @include('layouts/recommendedplaces')
    </div>

@endsection
