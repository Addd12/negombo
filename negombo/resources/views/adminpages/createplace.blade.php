@extends('layouts.adminmaster')
@section('section')
  <div class="container paddingTop20">
    <h1>Negombo Add Place</h1>
    <hr>
      @include('layouts.errormessages')
      <div class="row">
          <div class="col-sm-2">
              <label>Select Map:</label>
              <select id="picDD">
                  <option value="0" selected>Balze Alte</option>
                  <option value="1">Spiaggia</option>
                  <option value="2">Zona Termale</option>
                  <option value="3">Balze basse</option>
                  <option value="4">Zona Mare</option>
                  <option value="5">Arco</option>
                  <option value="6">Solarium</option>
              </select>
              <p id="xycoordinates"></p>
          </div>
          <div class="col-sm-10">
              <i class="fa fa-umbrella" id="marker"></i>
              <img onclick="cnvs_getCoordinates(event)" id="mapimgcntrl" src="{{ asset('images/maps/Balze Alte.jpg') }}" height="600px" width="800px" />
          </div>
      </div>
  </div>
  <hr>
  <div class="container">
      <form action="{{ route('admin.place.store') }}" method="POST">
          {{ csrf_field() }}
          <div class="row">
              <div class="col-sm-5">
                  <label>Coordinates Large(H:600 x W:800)(X,Y):</label><br>
                  <input id="iptcor1" type="number" name="co_xl" required>
                  <input id="iptcor2" type="number" name="co_yl" required><br>

                  <label>For small screen select from map:</label><br>
                  {{-- <i class="fa fa-umbrella" id="markerS"></i> --}}
                  <img onclick="cnvs_getCoordinates_small(event)" id="mapimgcntrlS" src="{{ asset('images/maps/Balze Alte.jpg') }}" height="350px" width="340px" />
                  <br>
                  <br>
                  <label>Coordinates Small(H:350 x W:340)(X,Y):</label><br>
                  <input id="iptcor1S" type="number" name="co_xs" required>
                  <input id="iptcor2S" type="number" name="co_ys" required><br>
              </div>
              <div class="col-sm-5">
                  <label>Map Name:</label>
                  <select name="map_name" class="form-control" id="map_names">
                      <option value="Balze Alte">Balze Alte</option>
                      <option value="Spiaggia">Spiaggia</option>
                      <option value="Zona Termale">Zona Termale</option>
                      <option value="Balze basse">Balze basse</option>
                      <option value="Zona Mare">Zona Mare</option>
                      <option value="Arco">Arco</option>
                      <option value="Solarium">Solarium</option>
                  </select>
                  <br>
                  <label>Place ID:</label>
                  <input class="form-control" type="text" name="place_id" required><br>
                  <label>Place Name:</label>
                  <input class="form-control" type="text" name="place_name" required><br>
                  <label>Coordinates:</label>
                  <textarea class="form-control" name="coordinates"></textarea>
                  <br>
                  <label>Coords (N):</label>
                  <input class="form-control" type="text" name="coordsn" required><br>
                  <label>Coords (E)</label>
                  <input class="form-control" type="text" name="coordse" required><br>
                  <input type="submit" class="btn btn-primary" id="btn_addplcsub">
              </div>
          </div>
      </form>
  </div>



<script>
// admin add place select image from  dropdown
var pictureList = [
        "{{ asset('images/maps/Balze Alte.jpg') }}",
        "{{ asset('images/maps/Spiaggia.jpg') }}",
        "{{ asset('images/maps/Zona Termale.jpg') }}",
        "{{ asset('images/maps/Balze basse.jpg') }}",
        "{{ asset('images/maps/Zona Mare.jpg') }}",
        "{{ asset('images/maps/Arco.jpg') }}",
        "{{ asset('images/maps/Solarium.jpg') }}",
        "#", ];

    $('#picDD').change(function () {
        var val = parseInt($('#picDD').val());
        $('#mapimgcntrl').attr("src",pictureList[val]);
        $('#mapimgcntrlS').attr("src",pictureList[val]);
        if(val==0) document.getElementById("map_names").value= "Balze Alte";
        if(val==1) document.getElementById("map_names").value= "Spiaggia";
        if(val==2) document.getElementById("map_names").value= "Zona Termale";
        if(val==3) document.getElementById("map_names").value= "Balze basse";
        if(val==4) document.getElementById("map_names").value= "Zona Mare";
        if(val==5) document.getElementById("map_names").value= "Arco";
        if(val==6) document.getElementById("map_names").value= "Solarium";
    });

</script>

@endsection
