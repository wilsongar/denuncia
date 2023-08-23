<!-- Imagen Field -->
<div class="col-sm-3">
    <td><button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target=".bd-example-modal-lg"><img src="{{ asset('storage').'/'.$denuncia->imagen}}" width="50" height="50"></button></td>
                <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <img src="{{ asset('storage').'/'.$denuncia->imagen}}"  width="500" height="560">
    </div>
  </div>
</div>
</div>

<!-- Descripcion Field -->
<div class="col-sm-3">
    {!! Form::label('descripcion', 'Descripción:') !!}
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
    {!! Form::label('id_categoria', 'Categoria:') !!}
    <p>{{ $denuncia->categoria->nombre }}</p>
</div>

<!-- Id Estado Field -->
<div class="col-sm-3">
    {!! Form::label('id_estado', 'Estado:') !!}
    <p>{{ $denuncia->estado->nombre }}</p>
</div>

<!-- Created At Field -->
<div class="col-sm-3">
    {!! Form::label('created_at', 'Creado en:') !!}
    <p>{{ $denuncia->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="col-sm-3">
    {!! Form::label('updated_at', 'Actualizado en:') !!}
    <p>{{ $denuncia->updated_at }}</p>
</div>

<table class="table table-bordered" id="data-table">
              <tr>
                <th><i class="cil-globe-alt fa-2x"></i> <strong>Ubicación del reporte.</strong></th>
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