<!-- Imagen Field -->
<div class="col-sm-3">
    {!! Form::label('imagen', 'Imagen:') !!}
  <p> <img src="{{ asset('storage').'/'.$denuncia->imagen}}" width="50" height="50"></p>
</div>

<!-- Descripcion Field -->
<div class="col-sm-3">
    {!! Form::label('descripcion', 'Descripcion:') !!}
    <p>{{ $denuncia->descripcion }}</p>
</div>

<!-- Latitud Field -->
<div class="col-sm-3">
    {!! Form::label('latitud', 'Latitud:') !!}
    <p>{{ $denuncia->latitud }}</p>
</div>

<!-- Longitud Field -->
<div class="col-sm-3">
    {!! Form::label('longitud', 'Longitud:') !!}
    <p>{{ $denuncia->longitud }}</p>
</div>

<!-- Fecha Field -->
<div class="col-sm-3">
    {!! Form::label('fecha', 'Fecha:') !!}
    <p>{{ $denuncia->fecha }}</p>
</div>

<!-- Id Categoria Field -->
<div class="col-sm-3">
    {!! Form::label('id_categoria', 'Id Categoria:') !!}
    <p>{{ $denuncia->categoria->nombre }}</p>
</div>

<!-- Id Estado Field -->
<div class="col-sm-3">
    {!! Form::label('id_estado', 'Id Estado:') !!}
    <p>{{ $denuncia->estado->nombre }}</p>
</div>

<!-- Created At Field -->
<div class="col-sm-3">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{{ $denuncia->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="col-sm-3">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{{ $denuncia->updated_at }}</p>
</div>

<table class="table table-bordered" id="data-table">
              <tr>
                <th><i class="cil-globe-alt fa-2x"></i> <strong>Ubicacion de denuncia.</strong></th>
              </tr>
                   
                   <tr>
                    <th>
                     <div id="map"></div>
                     </th>
                   </tr> 
                   
                </div>
              </table>
            </div>
           
</div>
         </div>
    </li>
    </ul>
    <style type="text/css">
                   #map { height: 350px; width:1550px; }
           </style>
            <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.min.css" type="text/css">
            <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
          <script>
            var map = L.map('map').setView([{{$denuncia->latitud}} , {{$denuncia->longitud}}], 15);
           L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          }).addTo(map);
            marker = new L.marker([{{$denuncia->latitud}} , {{$denuncia->longitud}}]);
            marker.bindPopup("Denuncia:{{$denuncia->descripcion}}</br>");
            map.addLayer(marker);
            marker.openPopup();
            
     </script>