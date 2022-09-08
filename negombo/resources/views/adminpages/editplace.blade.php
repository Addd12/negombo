@extends('layouts.adminmaster')
@section('section')

  <div class="container paddingTop20">
    <h1>Negombo Edit Place</h1>
    <hr>
      <form action="{{ route('admin.place.update', $place->place_id) }}" method="POST">
          {{ csrf_field() }}
          <div class="row">
              @include('layouts.errormessages')
              <div class="col-sm-4">
                  <label>Coordinates Large(H:600 x W:800)(X,Y):</label><br>
                  <input id="iptcor1" type="number" name="co_xl" value="{{ $place->co_xl }}" required>
                  <input id="iptcor2" type="number" name="co_yl" value="{{ $place->co_yl }}" required>
                  <br>
                  <label>Coordinates Small(H:350 x W:340)(X,Y):</label><br>
                  <input id="iptcor1S" type="number" name="co_xs" value="{{ $place->co_xs }}" required>
                  <input id="iptcor2S" type="number" name="co_ys" value="{{ $place->co_ys }}" required><br>
              </div>
              <div class="col-sm-6">
                  <label>Map Name:</label>
                  <select name="map_name" class="form-control" id="map_names">
                      <option value="Balze Alte">Balze Alte</option>
                      <option value="Spiaggia">Spiaggia</option>
                      <option value="Zona Termale">Zona Termale</option>
                      <option value="Balze basse">Balze basse</option>
                      <option value="Zona Mare">Zona Mare</option>
                  </select>
                  <br>
                  <label>Place ID:</label>
                  <input class="form-control" type="text" name="place_id" value="{{ $place->place_id }}"  disabled><br>
                  <label>Place Name:</label>
                  <input class="form-control" type="text" name="place_name" value="{{ $place->place_name }}" required><br>
                  <label>Coords (N):</label>
                  <input class="form-control" step="0.000000001" type="number" name="coordsn" value="{{ $place->coordsn }}" required><br>
                  <br>
                  <label>Coords (E):</label>
                  <input class="form-control" step="0.000000001" type="number" name="coordse" value="{{ $place->coordse }}" required><br>
                  <a href="{{ route('admin.place.delete', $place->place_id) }}" class="btn btn-danger">Delete</a>
                  <input type="submit" class="btn btn-primary" id="btn_addplcsub" value="Update">
              </div>
          </div>
      </form>
  </div>

<script>
  document.getElementById("map_names").value = "{{ $place->map_name }}";
</script>

@endsection
