@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>Negombo View Bookings</h1>
    <hr>
    <div class="row">
        <div class="col-sm-12">
          @if (Auth::user()->role == "admin")
            {{-- <a style="float:right;" href="{{ route('admin.booking.export') }}" class="btn btn-primary">{{ __('Export to Excel') }}</a><br><br><br> --}}
            <button style="float:right;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exportExcelmodal"> {{ __('Export to Excel') }} </button><br><br><br>
            @include('layouts.modalLayout.exportToexcel')
          @endif
            <table id="example_booking" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Book ID</th>
                        <th>Place ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>{{ __('Adults') }}</th>
                        <th>Babies</th>
                        <th>Check-In</th>
                        <th>Check-Out</th>
                        <th>Created At</th>
                        <th>Payment</th>
                        <th>Promo Type </th>
                        <th>Action</th>
                    </tr>
                </thead>

<!--                 <div id="preloader"></div> id="hidden_table_processing" -->
                <tbody>
                  {{-- process bar --}}
                  @foreach ($Bookings as $Booking)
                    <tr>
                        <td>{{ $Booking->ID }}</td>
                        <td>{{ $Booking->place_id }}</td>
                        <td>{{ $Booking->user_fullname }}</td>
                        <td>{{ $Booking->user_email }}</td>
                        <td>{{ $Booking->user_phone }}</td>
                        <td>{{ $Booking->user_no_of_guest }}</td>
                        <td>{{ $Booking->user_no_of_babies }}</td>
                        <td>{{ $Booking->user_checkin }}</td>
                        <td>{{ $Booking->user_checkout }}</td>

                        <td>
                          @php
                            echo date('h:i A,<\b\r> Y-m-d', strtotime($Booking->created_at));
                          @endphp
                        </td>
                        <td>{{ $Booking->user_payment_type }}</td>
                        <td>{{ $Booking->promo_type }}</td>
                        <td><a href="{{ route('admin.booking.viewbookingdelaits', $Booking->ID) }}">View</a>
                          @if (Auth::user()->role == "admin")
                            / <a href="{{ route('admin.booking.editbookingdelaits', $Booking->ID) }}">Edit</a>
                          @endif
                        </td>
                    </tr>
                  @endforeach
                </tbody>
            </table>
<!--             <div id="loader_space"></div>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>
            <script>
                paceOptions = {
                  ajax: true,
                  document: true,
                  eventLag: false
                };

                Pace.on('done', function() {
                  $('#preloader').delay(100).fadeOut(500);
                  document.getElementById("loader_space").style.display = "none";
                  $('#hidden_table_processing').fadeIn(200);
                });
            </script> -->
        </div>
    </div>
  </div>
@endsection
