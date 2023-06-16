@extends('layouts.usermaster')



@section('section')
    <?php
    //  $a=get_defined_vars();
    // dd($a);
    ?>

    <div class="container-fluid" style="padding-top:30px;">
        <div class="row">
            <div class="col-sm-3">
                <div class="card">
                    <div class="card-header bg-success" id="price_style">
                        <span>{{ __('Instructions') }}</span>
                    </div>
                    <div class="card-body" style="font-size:12px;">
                        <li>{{ __('Choose the day you wish to book') }}</li>
                        <li>{{ __('Update the map to see availability') }}</li>
                        <li>{{ __('Select your favorite seat') }}</li>
                        <br>
                        <p style="text-align:justify;">{{ __('The white umbrellas are not bookable because they are intentionally left free for access to guests arriving at Negombo without having booked') }}
                            .</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 offset-sm-1" style="padding-top:40px">
                <h2 id="heading_qt">{{ __('Book your favorite place on the map') }}</h2>
                <form action="" method="GET">
                
                    {{ csrf_field() }} 
                    <br>
                    <noscript>
                        <li class="text-warning"><span>{{ __('Javascript is not enabled, it is necessary to enable JavaScript') }}.</span>
                        </li>
                        <li><span><a target="_blank" href="https://www.enable-javascript.com/it/">{{ __('Instructions how to enable JavaScript in your web browser') }}.</a></span>
                        </li>
                        <br><br>
                    </noscript>
                        <span><strong>{{ __('Arrival day') }}:</strong></span>
                        <div class="row align-items-end">
                            {{-- <span id="tdatepik" class="t-check-in"></span> --}}
                            {{-- <span class="t-check-out"></span> --}}
                            <?php
                                $query = $_SERVER['QUERY_STRING'];
                                $url = $query;
                                $checkout = substr($url, -10);
                                $maparray['checkout_date'] = $checkout;
                                // dump($maparray['checkout_date']);
                            ?>
                            @php
                                // for logged in restictioons are removed
                                if(Auth::check() && Auth::user()->role != "admin"){
                                  $makestr = '+365 day';
                                  $startday = date("Y-m-d");
                                //dump($startday);
                                  $endday = date("Y-m-d", strtotime($makestr));

                                }else{
                                    // for non-logged in user
                                    $makestr = '+'.($maparray["set_admin"]->max_no_days)." day";

                                //  dd($makestr);

                                  $close_h = date('H', strtotime($maparray["set_admin"]->closing_time));
                                  $close_hBig = date('H', strtotime($maparray["set_admin"]->closing_time)+60*60);
                                  $close_m = date('i', strtotime($maparray["set_admin"]->closing_time));
                                  if((date('H')>=$close_h && date('i')>=$close_m) || (date('H')>=$close_hBig)){
                                    $today = date("Y-m-d H:i");
                                    $startday = date("Y-m-d", strtotime("+2 day"));
                                    $makestr = '+'.($maparray["set_admin"]->max_no_days+1)." day";
                                  }else{
                                    $today = date("Y-m-d H:i");
                                    $startday = date("Y-m-d", strtotime("+1 day"));
                                  }

                                  //
                                  $endday = date("Y-m-d", strtotime($makestr));
                                  //dump($endday);
                                  //dump($maparray['checkin_date'],$maparray['checkout_date']);
                                  

                                }
                                if(Auth::check() && Auth::user()->role == "admin"){
                                  $makestr = '+365 day';
                                }
                                //ddd($makestr);
                                  $place_hold = '<i class="fa fa-arrow-right" aria-hidden="true"></i>'." Check-in";
                            @endphp

                            @csrf
            
                @if( Auth::check() &&  Auth::user()->role == "admin")
                    <div class="col-sm">
                            <span>Checkin
                                <input type="date" class="form-control"
                                       id="t_start"
                                       name="t_start"
                                       value="{{ $startday }}"
                                       min='{{ $startday }}'
                                        required/>
                                       </span>
                            </div>
                            <div class="col-sm">
                                <span>Checkout
                                        <input type="date" class="form-control"
                                       name="t_end"
                                       value="{{ $startday }}" min='{{ $startday }}'
                                        required/>
                                       </span>
                            </div>
                            <div class="col-sm">
                                <button id="src_sm_btn" type="submit" class="btn btn-success">{{ __('Update Map') }}</button>
                            </div>
                @else 
                    <div class="col-sm">
                                <span>Checkin
                                    <input type="date" class="form-control" onchange="startDatejsfunc()"
                                           id="t_start"
                                           name="t_start"
                                           value="{{ $startday }}"
                                           min='{{ $startday }}'
                                           max='{{ $endday }}' required/>
                                           </span>
                                </div>
                                <div class="col-sm">
                                <span>Checkout
                                    <input type="date" class="form-control"
                                           name="t_end"
                                           value="{{ $startday }}" min='{{ $startday }}' max='{{ $endday }}'
                                           required/>
                                           </span>
                                </div>
                                <div class="col-sm">
                                    <button id="src_sm_btn" type="submit" class="btn btn-success">{{ __('Update Map') }}</button>
                                </div>
                @endif        
                            <script>
                                function startDatejsfunc() { 
                                    var minToDate = document.getElementById("t_start").value;
                                    document.getElementById("searchdate_numberofdays").value = minToDate;
                                    document.getElementById("searchdate_numberofdays").setAttribute("min", minToDate);
                                }
                            </script>
                            {{-- <?php
                             if(Auth::user()):
                            ?>
                            <input id="searchdate_numberofdays" min="0" type="number" name="no_of_day" placeholder="{{ __('Number of days') }}: 1">
                            <?php
                            else: ?>
                            <input id="searchdate_numberofdays" min="0" max="{{ $maparray['set_admin']->max_no_days }}" type="number" name="no_of_day" placeholder="{{ __('Number of days') }}: 1">
                            <?php
                             endif
                            ?> --}}

                            @isset($maparray['err_msg'])
                                <span id="errormsg_txt"
                                      style="color:red;"> {{ __('You can book maximum') }} {{ $maparray["set_admin"]->max_no_days }} {{ __('days') }}.</span>
                                <br>
                            @endisset
                            <span id="errormsg_txt" style="color:red; display:none;"> {{ __('Arrival day is not selected') }}. </span><br>
                        </div>
                </form>
            </div>
        </div>
    </div>
    {{-- checkin checkout box js --}}

    <!-- base map	 -->
    <div class="container-fluid" id="map_stype_whole">
        <div class="row">
            <div class="offset-sm-3 col-sm-8 offset-sm-1 col-12">
                <center>
                                       {{-- {{dd($maparray['checkin_date'])}} --}}
                                       {{-- {{ dd($makestr) }} --}}
                    @isset($maparray['checkin_date'])
                        <span><strong>{{ __('Choose Your Place Here') }}</strong></span>
                        <div class="py-3">{{ __('Availability for') }}: <strong>{{ date('d-m-Y', strtotime($maparray['checkin_date'])) }}</strong> {{ __('to') }}
                            <strong>{{ date('d-m-Y', strtotime($maparray['checkout_date'])) }}</strong></div>
                    @endisset
                    <div class="containersmallmap">
                        <img id="baseMapimgStyle" src="{{ asset('images/maps/'.$maparray['map_name'].'.jpg') }}"
                             alt="Workplace" usemap="#workmap" height="600px" width="800px">
                        
@if (isset($maparray['checkin_date']))
        @isset($maparray['places'])
            @php
                $ind=1;
            @endphp
            @foreach ($maparray['places'] as $place)
                @if ($place->status==0)
                    @php                                           
                        $makestr = '+'.($maparray["set_admin"]->max_no_days)." day";
                    @endphp
                    @if( strtotime($maparray['checkin_date']) > strtotime($makestr) )                                                                               
                        <a onclick="return false;" href="" id="{{ 'mapmarkgy'.$ind }}"
                        class="mapmarkgycls"
                        style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ $place->place_id }}</a>
                        <script>
                            if (window.screen.width < 768) {
                                document.getElementById("{{ 'mapmarkgy'.$ind }}").style.left = "{{ $place->co_xs-10 }}" + "px";
                                document.getElementById("{{ 'mapmarkgy'.$ind }}").style.top = "{{ $place->co_ys-5 }}" + "px";
                            }
                        </script>
                    @else
                        <a href="{{ route('user.createbooking',  ['place_id' => $place->place_id, 'checkin' => $maparray['checkin_date'], 'checkout' => $maparray['checkout_date'], 'error_msg' => 0]) }}"
                            class="mapmarkgrcls" id="{{ 'mapmarkgr'.$ind }}"
                            style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ $place->place_id }}</a>

                        <script>
                            if (window.screen.width < 768) {
                                document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}" + "px";
                                document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}" + "px";
                            }
                        </script>
                                                    
                    @endif
                @endif
                    
                @if ($place->status== -1)
                    {{-- menually control colors for links --}}
                    <a onclick="return false;" href="" id="{{ 'mapmarkgy'.$ind }}"
                        class="mapmarkgycls"
                        style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ $place->place_id }}</a>

                    <script>
                        if (window.screen.width < 768) {
                            document.getElementById("{{ 'mapmarkgy'.$ind }}").style.left = "{{ $place->co_xs-10 }}" + "px";
                            document.getElementById("{{ 'mapmarkgy'.$ind }}").style.top = "{{ $place->co_ys-5 }}" + "px";
                        }
                    </script>
                @endif
                
                @if ($place->status==2)
                    {{-- menually control colors for links --}}
                    <a onclick="return false;" href="" id="{{ 'mapmarkred'.$ind }}"
                        class="mapmarkredcls"
                        style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ $place->place_id }}</a>

                    <script>
                        if (window.screen.width < 768) {
                            document.getElementById("{{ 'mapmarkred'.$ind }}").style.left = "{{ $place->co_xs-10 }}" + "px";
                            document.getElementById("{{ 'mapmarkred'.$ind }}").style.top = "{{ $place->co_ys-5 }}" + "px";
                        }
                    </script>
                @endif
                    {{-- add some dynamic javascipt codes for mobile device --}}
                    @php
                        $ind=$ind+1;
                    @endphp
            @endforeach
        @endisset
@else
        @php
            $ind=1;
        @endphp
        @foreach ($maparray['places'] as $place)
            @if ($place->status == -1)
                <a onclick="checkinValidation()" href="#" class="mapmarkgycls"
                    id="{{ 'mapmarkgr'.$ind }}"
                    style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ $place->place_id }}</a>
                <script>
                    if (window.screen.width < 768) {
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}" + "px";
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}" + "px";
                    }

                    function checkinValidation() {
                        document.getElementById("t_start").style.borderColor = "red";
                        document.getElementById("errormsg_txt").style.display = "block";

                    }

                </script>
            @else
                <a onclick="checkinValidation()" href="#" class="mapmarkgrcls"
                    id="{{ 'mapmarkgr'.$ind }}"
                    style="left: {{ $place->co_xl-15 }}px; top:{{ $place->co_yl-5 }}px;">{{ $place->place_id }}</a>
                <script>
                    if (window.screen.width < 768) {
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.left = "{{ $place->co_xs-10 }}" + "px";
                        document.getElementById("{{ 'mapmarkgr'.$ind }}").style.top = "{{ $place->co_ys-5 }}" + "px";
                    }

                    function checkinValidation() {
                        document.getElementById("t_start").style.borderColor = "red";
                        document.getElementById("errormsg_txt").style.display = "block";

                    }

                </script>
            @endif

            @php
                $ind=$ind+1;
            @endphp
            
        @endforeach
@endif

                    </div>
                    <center>
            </div>
        </div>
    </div>
@endsection
