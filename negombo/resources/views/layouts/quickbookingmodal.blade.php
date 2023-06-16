<script src="https://cdnjs.cloudflare.com/ajax/libs/slim-select/1.27.1/slimselect.min.js"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/slim-select/1.27.1/slimselect.min.css" rel="stylesheet"/>
<div class="modal fade" id="myModal">
    <div class=row>
        <div class="col-sm-10 offset-sm-1">
            <div class="modal-dialog modal-lg">
                <form action="" method="POST">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <!-- <h4 class="modal-title">Quick Booking @{{ name }}</h4> -->
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            {{ csrf_field() }}
                            @isset($error_msg)
                                @foreach ($error_msg as $error)
                                    <li class="text-danger">{{ $error }}</li>
                                @endforeach
                            @endisset

                            <div action="" class="form-group row">
                                <div>
                                    <label for="map_name" class="form-label">Choose a Zone</label>
                                    <select name="map_name" id="map_name" class="form-select">
                                        <option value="">-- Select a zone name -- </option>
                                    </select>
                                    <small class="text-danger" id="zone_error_msg"></small> 
                                </div>
                                <label for="placeid"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Arrival day') }}: </label>
                                <div class="col-md-8">
                                    <div class="container">
                                        <div class="row">
                                            <?php 
                                            $makestr = '+365 day';
                                            $startday = date("Y-m-d");
                                            $endday = date("Y-m-d", strtotime($makestr));
                                            ?>
                                            <div class="col">
                                                <input min="{{$startday}}" 
                                                        placeholder="DD/MM/YYYY"
                                                        style="width: 100%;"
                                                        type="date" id="searchdate_numberofdays"
                                                        name="t_start"
                                                        class="form-control booking_start_date">
                                                        <small class="text-danger" id="start_date_error_msg"></small> 
                                            </div>
                                            <div class="col">
                                                <input min="{{$startday}}"
                                                    id="searchdate_numberofdays"
                                                    style="width: 100%;"
                                                    name="t_end"
                                                    type="date"
                                                    class="form-control booking_end_date"
                                                    placeholder="DD/MM/YYYY">
                                                    <small class="text-danger" id="end_date_error_msg"></small> 
                                                </div>
                                                <button class="btn btn-primary" id="search-places">Search Places</button>
                                        </div>

                                            @isset($maparray['err_msg'])
                                                <span id="errormsg_txt"
                                                    style="color:red;"> {{ __('You can book maximum') }} {{ $maparray["set_admin"]->max_no_days }} {{ __('days') }}.</span>
                                                <br>
                                            @endisset
                                            <span id="errormsg_txt" style="color:red;display:none;"> {{ __('Arrival day is not selected') }}. </span><br>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="placeid" class="col-md-4 col-form-label text-md-right">{{ __('Place ID') }}
                                    : </label>
                                <div class="col-md-6">
                                    <script>
                                        new SlimSelect({
                                            select: '#multiple'
                                        })
                                    </script>
                                    <select name="place_id[]" id="multiple" multiple>
                                        @foreach($places_name as $place)
                                            <option name="place_id[]"
                                                    value="{{$place['place_name']}}">{{$place['place_name']}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fullname"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Full Name') }}: </label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="user_fullname" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Email address') }}: </label>
                                <div class="col-md-6">
                                    <input type="email" class="form-control" name="user_email" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}
                                    : </label>
                                <div class="col-md-6">
                                    <input type="tel" class="form-control" name="user_phone" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="geust"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Number of adults') }}
                                    [1-4]: </label>
                                <div class="col-md-6">
                                    <select class="form-control booking_inp_textbox_style" id="numberofguest"
                                            name="numberofguest" onchange="addFieldsadmin(this.value);">
                                        <option value="0" active>1</option>
                                        <option value="1">2</option>
                                        <option value="2">3</option>
                                        <option value="3">4</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="babies"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Number of babies') }}
                                    [1-4]: </label>
                                <div class="col-md-6">
                                    <select class="form-control booking_inp_textbox_style" id="numberofbabies"
                                            name="numberofbabies" onchange="addFieldsadmin2(this.value);">
                                        <option value="0" active>0</option>
                                        <option id="hidden_op_style1" value="1">1</option>
                                        <option id="hidden_op_style2" value="2">2</option>
                                        <option id="hidden_op_style3" value="3">3</option>
                                        <option id="hidden_op_style4" value="4">4</option>
                                    </select>
                                </div>
                            </div>

                            <div class="containerinput">
                                {{-- dynamic input surname using javascript --}}
                            </div>
                            <div class="containerinput2">
                                {{-- dynamic input surname using javascript --}}
                            </div>
                            <div class="form-group row">
                                <label for="promo" class="col-md-4 col-form-label text-md-right">{{ __('Promo Code') }}
                                    : </label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="user_promo">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="book" class="col-md-4 col-form-label text-md-right">{{ __('Booked By') }}
                                    : </label>
                                <div class="col-md-6">
                                    <label>{{ Auth::user()->name }}</label>

                                </div>
                            </div>
                            @if (Auth::user()->role == 'admin')
                                <div class="form-group row">
                                    <label for="Ammount"
                                           class="col-md-4 col-form-label text-md-right">{{ __('Payment Type') }}
                                        : </label>
                                    <div class="col-md-6">
                                        <input type="radio" name="user_payment_type" value="Entrance">
                                        <label for="Entrance"
                                               class="booking_payment_type_style">{{ __('Entrance (Cash)') }}</label>&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="user_payment_type" value="Admin" checked>
                                        <label for="Entrance"
                                               class="booking_payment_type_style">{{ __('Admin (Free)') }}</label><br>

                                    </div>
                                </div>
                            @else
                                <div class="form-group row">
                                    <label for="promo"
                                           class="col-md-4 col-form-label text-md-right">{{ __('Payment Type') }}
                                        : </label>
                                    <div class="col-md-6">
                                        <input type="radio" name="user_payment_type" value="Entrance" checked>
                                        <label for="Entrance"
                                               class="booking_payment_type_style">{{ __('Entrance (Cash)') }}</label>
                                    </div>
                                </div>
                            @endif


                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal" id="close_btn">Close</button>
                            <button type="submit" class="btn btn-success">{{ __('Save') }}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    var today = new Date();
    tomorrow = new Date(today);
    tomorrow.setDate(tomorrow.getDate() + 60);
    var date = tomorrow.getFullYear() + '-' + (tomorrow.getMonth() + 1) + '-' + tomorrow.getDate();
    // $(document).ready(function () {
    //     // Call global the function
    //     console.log('ready from inside')
    //     // creat a variable to store list of places 
    //     let zones = '';

    //     // maka an ajax call to db
    //     const xhttp = new XMLHttpRequest(); //XMLHttpRequest object
    //         xhttp.onload = function(){
    //             let results = JSON.parse(this.responseText);
    //             if(results != ""){
    //                 console.log(results)
    //                 for(let x in results)
    //                 {
    //                     let currentName = results[x]['map_name'];
    //                     // console.log(currentName)
    //                     $("#map_name").append(new Option(currentName,currentName));
    //                 }
    //             }
    //             else{
    //                 $("#map_name").empty();
    //                 // console.log("No zone names found") // for debugging
    //             }
    //         }
    //         let url = "./admin/quickbooking/zones";
    //         xhttp.open("GET",url);
    //         xhttp.send();

    //     // populate Dom with db data


    //     $('.t-datepicker').tDatePicker({
    //         // options here


    //         firstDay: 0,
    //         titleDateRange: '{{ __('day') }}',
    //         titleDateRanges: '{{ __('days') }}',
    //         titleToday: '{{ __('Today') }}',
    //         // limitDateRanges    :'{{ $set_admin->max_no_days+1 }}',
    //         titleCheckIn: '{{ __('Check In') }}',
    //         titleCheckOut: '{{ __('Check Out') }}',
    //         numCalendar: 1,
    //         //endDate: date,
    //         nextDayHighlighted: false,
    //         toDayHighlighted: true,
    //         toDayShowTitle: true,
    //         autoClose: true,
    //         dateRangesHover: false,


    //     });
    //     $('#close_btn').on('click',function(){
    //         console.log('close btn clicked')
    //     });

    //     /** Dynamically read zone names from place table on Database */



    //     /**Dynamically read user selected dates (start and end date) and map zone to
    //      * show all available places 
    //      * 
    //      */
    //     let booking_start_date = booking_end_date = map_name = '';
    //     $('.booking_start_date').on('change',function(){
    //         booking_start_date = this.value
    //     });

    //     $('.booking_end_date').on('change',function(){
    //        booking_end_date = this.value
    //     });

    //     $('#map_name').on('change',function(){
    //        map_name = this.value
    //     });

    //     $('#search-places').on('click',function(){
    //         console.log('s places ckicked');
    //         //check if start date or end date is empty
    //         if(booking_start_date == '' || booking_end_date == '' || map_name == '')
    //         {
    //             if(booking_start_date == ''){
    //                 $('#start_date_error_msg').html("booking start date is empty")
    //             }else
    //                 {
    //                     $('#start_date_error_msg').html("")
    //                 }

    //             //check if end date is empty
    //             if(booking_end_date == '')
    //             {
    //                 $('#end_date_error_msg').html("booking end date is empty")
    //             }
    //             else
    //                 {
    //                     $('#end_date_error_msg').html("")
    //                 }
    //             //check if zone name is empty
    //             if(map_name == '')
    //             {
    //                 $('#zone_error_msg').html("zone name is empty")
    //             }
    //             else
    //                 {
    //                     $('#zone_error_msg').html("")
    //                 }
    //         }
    //         else if(booking_start_date  != '' && booking_end_date != '' && map_name != '')
    //         {
    //             //set start date error message, end date error message and zone error message to empty
    //             $('#end_date_error_msg').html("")
    //             $('#start_date_error_msg').html("")
    //             $('#zone_error_msg').html("")
    //             // const xhttp = new XMLHttpRequest(); //XMLHttpRequest object
    //             // xhttp.onload = function(){
    //             //     let results = JSON.parse(this.responseText);
    //             //     // let results = this.responseText;
    //             //     if(results != ""){
    //             //         console.log(results)

    //             //     }
    //             //     else{
    //             //         console.log("nothing better")
    //             //     }

    //             // }
    //             // let url = "./admin/quickbooking/zones/"+map_name+"/"+booking_start_date+"/"+booking_end_date;
    //             // console.log(url)
    //             // xhttp.open("GET",url);
    //             // xhttp.send();
    //             let form = new FormData();
    //             form.append("t_start",booking_start_date);
    //             form.append("t_end",booking_end_date);
    //             form.append("map_name",map_name);

    //             console.log(form.values);

    //             $.ajax({
    //                 url:"./admin/quickbooking/zones/places/",
    //                 method: 'GET',
    //                 data:form ,
    //                 success: function(response){
    //                     //------------------------
    //                       console.log(response)
    //                     //--------------------------
    //                 }});
                
    //         }
    //     });

       
       

    // });

    //'.t-datepicker').tDatePicker('setDate', '+1');

</script>

<script type="text/javascript">
    new SlimSelect({
        select: '#multiple'
    })

    @isset($error_msg)
    @if (count($error_msg) > 0)
    $('#myModal').modal('show');
    @endif
    @endisset

</script>
