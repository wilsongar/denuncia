<!-- user Field -->
<div class="form-group col-md-6 pull-left">
<label for="id_user">Usuario:</label>
            <input type="text" name="id_user" class="form-control" value="{{ Auth::user()->id }}" readonly>
        </div>

<!-- Imagen Field -->
<div class="form-group col-sm-6">
  {!! Form::label('imagen', 'Imagen:') !!}
<div class="input-group">
<div class="custom-file">
{!! Form::file('imagen', null, ['class' => 'form-control', 'id' => 'imagen','required']) !!}
<label class="custom-file-label" for="imagen">Seleccionar Archivo</label>
</div>

</div>
</div>
<!-- Descripcion Field -->
<div class="form-group col-sm-6 ">
    {!! Form::label('descripcion', 'Descripción:') !!}
    {!! Form::text('descripcion', null, ['class' => 'form-control','required']) !!}
</div>

<!-- Latitud Field -->
<div class="form-group col-sm-6 d-none">
    {!! Form::label('latitud', 'Latitud:') !!}
    {!! Form::text('latitud', null, ['class' => 'form-control','required']) !!}
</div>

<!-- Longitud Field -->
<div class="form-group col-sm-6 d-none">
    {!! Form::label('longitud', 'Longitud:') !!}
    {!! Form::text('longitud', null, ['class' => 'form-control','required']) !!}
</div>

<!-- Fecha Field -->
<div class="form-group col-sm-6">
    {!! Form::label('id_categoria', 'Categoria:') !!}
    {!! Form::select('id_categoria', $categoria, null, ['class' => 'form-control custom-select','placeholder'=>'Selecione una opcion','required']) !!}
</div>


@push('page_scripts')
    <script type="text/javascript">
        $('#fecha').datetimepicker({
            format: 'YYYY-MM-DD',
            useCurrent: true,
            sideBySide: true
        })
    </script>
@endpush

<!-- Id Categoria Field -->

<div class="form-group col-sm-6">
    {!! Form::label('fecha', 'Fecha:') !!}
    {!! Form::text('fecha', null, ['class' => 'form-control','id'=>'fecha','required']) !!}
</div>

<!-- Id Estado Field -->



  @if(Auth::user()->hasRole('super_admin'))
    <div class="form-group col-sm-6">
    {!! Form::label('id_estado', 'Estado:') !!}
    {!! Form::select('id_estado', $estado, null, ['class' => 'form-control custom-select','placeholder'=>'Selecione una opcion','required']) !!}
</div>
    @else
             <div class="form-group col-sm-6">
    {!! Form::label('id_estado', 'Estado:') !!}
    {!! Form::select('id_estado', $estado2, null, ['class' => 'form-control custom-select','placeholder'=>'Selecione una opcion','required']) !!}
                </div>
            @endif




<div class="form-group col-sm-12">
<div id="map"></div>
</div>

<style type="text/css">
    #map { height: 360px; }
</style>
 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
     integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
     crossorigin=""/>
      <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
     integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
     crossorigin=""></script>

<script type="text/javascript">
     var map = L.map('map').setView([-27.33056,  -55.86667], 13);

          L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          }).addTo(map);
           marker = new L.marker([-27.33056,  -55.86667], {draggable:'true'});
            map.addLayer(marker);
            function onMapClick(e) {
            marker.on('dragend', function(event){
            var marker = event.target;
            var position = marker.getLatLng();
            marker.setLatLng(new L.LatLng(position.lat, position.lng),{draggable:'true'});
            map.panTo(new L.LatLng(position.lat, position.lng));
            console.log(marker.getLatLng());
            document.getElementById('latitud').value = marker.getLatLng().lat;
            document.getElementById('longitud').value = marker.getLatLng().lng;
          });
          
          map.addLayer(marker);
        };
    
        map.on('mouseover', onMapClick);
</script>