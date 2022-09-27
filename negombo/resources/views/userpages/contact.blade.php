@extends('layouts.usermaster')

@section('section')
  <div class="container-fluid padding20">
    <h2 class="contactHeader">{{ (__('Contact With Us')) }}</h2>
      <div class="row">
        <div class="col-sm-6">
          <div class="contact">
              <h4 class="contactHeader">Negombo Park</h4>
              <p class="contactDetails"><i class="fa-solid fa-location-dot fa-2xl"></i>  San Montano Bay, 80076 Lacco Ameno - Ischia Island (Naples)</p>
              <p class="contactDetails"><i class="fa-solid fa-phone fa-2xl"></i> +39 081 986152</p>
              <p class="contactDetails"><i class="fa-solid fa-fax fa-2xl"></i> +39 081 986342</p>
              <p class="contactDetails"><i class="fa-solid fa-envelope fa-2xl"></i><a href = "mailto: negombo@negombo.it" class="email"> negombo@negombo.it</a></p>
            </div>
          </div>
        <div class="col-sm-6">
          <div class="map">
              <h4 class="contactHeader">{{ (__('Map Location')) }}</h4>
              <iframe class="map_frame_style" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1797.0355042978154!2d13.877617386631133!3d40.756714419850205!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133b4079f00b8b73%3A0x96efc604f2038211!2sNegombo!5e0!3m2!1sen!2sbd!4v1595454853098!5m2!1sen!2sbd" width=100% frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
          </div>
      </div>
  </div>
@endsection
