<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <title>{{ __('Welcome') }} &raquo; Negombo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/intl-tel-input@17.0.3/build/css/intlTelInput.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/intl-tel-input@17.0.3/build/js/intlTelInput.js"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">

    <!-- add custom css files -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/negombo2020.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/datepicker/t-datepicker.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/datepicker/t-datepicker-green.css') }}">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-B0F0XH5VDN"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'G-B0F0XH5VDN');
    </script>


</head>

<body>
<nav class="navbar navbar-expand-lg sticky-top" id="nav_bar_style">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('images/siteimages/logo-color.svg') }} "
                                                           height="55px" width="250px"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                {{-- Left--}}
                <ul class="navbar-nav mr-auto">
                    {{-- Buttons elements--}}
                    <li class="nav-item itmstyle">
                        <a class="nav-link " href="{{ url('/') }}"><span>{{ __('Home') }}</span></a>
                    </li>
<!--                     <li class="nav-item itmstyle">
                        <a class="nav-link " href="{{ route('user.prices') }}"><span>{{ __('Prices') }}</span></a>
                    </li> -->
                    {{-- <li class="nav-item itmstyle">
                        <a class="nav-link" href="#"><span>{{ __('Quick Booking') }}</span></a>
                    </li> --}}
                    <li class="nav-item dropdown itmstyle">
                        <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            <span>{{ __('Places') }}</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            @foreach ($maparray['map_coods'] as $map_cood)
                            <a class="dropdown-item"
                               href="{{ route('user.viewsmallplace', $map_cood->map_name) }}"><span>{{
                                    $map_cood->map_name }}</span></a>
                            <div class="dropdown-divider"></div>
                        @endforeach
                    </div>
                </li>
                <li class="nav-item itmstyle">
                    <a class="nav-link" href="{{ route('user.contact') }}"><span>{{ __('Contact Us') }}</span></a>
                </li>


            </ul>
            {{-- Right--}}
            <ul class="navbar-nav me-auto">
                {{-- Languages--}}
                <div class="nav-item itmstyle justify-content-end">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{-- {{ Config::get('languages')[App::getLocale()] }} --}}
                            <span>{{ Config::get('languages')[App::getLocale()] }}</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            @foreach (Config::get('languages') as $lang => $language)
                                @if ($lang != App::getLocale())
                                    <a class="dropdown-item" href="{{ route('lang.switch', $lang) }}"> <span>{{
                                        $language}}</span></a>
                                @endif
                            @endforeach
                        </div>
                    </li>
                </div>

                {{-- <li class="nav-item search_style">--}}
                {{-- <form class="form-inline my-2 my-lg-0">--}}
                {{-- <input class="form-control mr-sm-2" type="search"
                    placeholder="{{ __('Tracking Number') }}" --}} {{-- aria-label="Search">--}}
                {{-- </form>--}}
                {{-- </li>--}}




                {{-- Not logged in: --}}
                @guest
                    {{-- <li class="nav-item itmstyle">--}}
                    {{-- <a class="nav-link " href="{{ url('/register') }}"><span>{{ __('Register')
                            }}</span></a>--}}
                    {{-- </li>--}}
                    {{-- <li class="nav-item itmstyle">--}}
                    {{-- <a class="nav-link " href="{{ url('/login') }}"><span>{{ __('Log in') }}</span></a>--}}
                    {{-- </li>--}}
                @endguest


                @auth
                    <li class="nav-item dropdown itmstyle ">
                        <a id="username_navbar_style" class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right " aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                   document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>

                            <a class="dropdown-item" href="{{ route('admin') }}">
                                {{ __('Admin Panel') }}
                            </a>
                        </div>
                    </li>
                @endauth
            </ul>
        </div>
    </div>
</nav>


@yield('section')


<div class="padding20"></div>
<footer class="footer-style">
    <div class="container">
        <div class="d-flex justify-content-center">
            <a href="{{ url('/') }}"><img src="{{ asset('images/siteimages/logo-color.svg') }} "height="55px" width="250px"></a>
        </div>
        <div class="contactFooter">
            <p><i class="fa-solid fa-location-dot"></i>  San Montano Bay, 80076 Lacco Ameno - Ischia Island (Naples)</p>
            <div class="pulser">
                <i class="fa-solid fa-phone"></i> {{ (__('Call Us')) }}: +39 081 986152
            </div>
        </div>
        <div class="d-flex justify-content-center">
            <span><a class="policy" href="{{ route('user.regulations') }}">{{__('Terms and Regulations') }}</a></span>
            <span><a class="policy" href="{{ route('user.privacy') }}">Privacy Policy</a></span>
        </div>
        <hr>
        <!-- last fotter start -->
        <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
                <div class="footer-copyright">
                        <span>Copyright &copy; 2020-<script>
                                document.write(new Date().getFullYear())
                            </script> All Rights Reserved by <a target="_blank"
                                                                href="http://www.negombo.it">Negombo</a></span>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12">
                <ul class="social-icons">
                    <li><a class="facebook" target="_blank" href="https://www.facebook.com/negombo"><i class="fa-brands fa-facebook-f"></i></a></li>
                    <li><a class="dribbble" target="_blank" href="https://www.instagram.com/negomboischia"><i class="fa-brands fa-instagram"></i></a></li>
                    {{-- <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li> --}}
                    <li><a class="linkedin" href="https://www.negombo.it"><i class="fa-regular fa-copyright"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

</body>


<script src="{{ asset('js/t-datepicker.min.js') }}"></script>
<script src="{{ asset('js/negomgo2020.js') }}"></script>

</html>
