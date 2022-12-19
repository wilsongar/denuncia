@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h1>Mapa de Denuncias</h1>
                </div>
            </div>
        </div>
    </section>

    <div class="content px-3">

        @include('adminlte-templates::common.errors')

        <div class="card">

          

            <div class="card-body">

                <div class=" row">
   

<!-- Fecha Field -->
<div class="form-group col-sm-6">
    {!! Form::label('id_categoria', 'Id Categoria:') !!}
    {!! Form::select('id_categoria', $categoria, null, ['class' => 'form-control custom-select']) !!}
</div>
<div class="form-group col-sm-6">
    {!! Form::label('id_estado', 'Id Estado:') !!}
    {!! Form::select('id_estado',$estado, null, ['class' => 'form-control custom-select']) !!}
</div>
<div class="form-group col-sm-3">
<button type="submit" class="btn btn-primary" id="buscar">Visualizar en mapa</button>
<button type="submit" class="btn btn-danger" id="borrar">Limpiar mapa</button>
</div>
<div class="form-group col-sm-12">
<div id="map"></div>
</div>
<style type="text/css">
    #map { height: 500px; }
</style>
 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
     integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
     crossorigin=""/>
      <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
     integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
     crossorigin=""></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript">
     var map = L.map('map').setView([-27.33056,  -55.86667], 13);

          L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          }).addTo(map);

         var layer;

         

const greenIcon = new L.Icon({
      iconUrl:
        "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-green.png",
      shadowUrl:
        "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });

 const redIcon = new L.Icon({
      iconUrl:
        "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-red.png",
      shadowUrl:
        "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });
const violetIcon = new L.Icon({
      iconUrl:
        "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-violet.png",
      shadowUrl:
        "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });

const orangeIcon = new L.Icon({
      iconUrl:
        "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-orange.png",
      shadowUrl:
        "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });


 function getColor(id){

        if(id==='Basura'){
            return redIcon;

        }
        if(id==='Bache'){
            return greenIcon;
        }
        if(id==='Semaforo'){
            return orangeIcon;
        }
        if(id==='Alumbrado'){
            return violetIcon;
        }
    

    } 

      $("#borrar").click(function() {

       map.eachLayer(function (layer) {
            map.removeLayer(layer);
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          }).addTo(map);
        });

      });
        $("#buscar").click(function() {
            var categoria = $('#id_categoria').find(":selected").val();
            var estado = $('#id_estado').find(":selected").val();

   $.get( "geojson",{ categoria: categoria, estado: estado }, function( data ) {
            
   

    layer= L.geoJSON(null,{
    pointToLayer: function (feature, latlng) {
      return L.marker(latlng,{icon: getColor(feature.properties.estado)});
    },
    onEachFeature: function (feature, layer) {
      if(feature['properties']['estado'] === 'Activo' ){
        layer.options.opacity = 1;
    }
     if(feature['properties']['estado'] === 'En tramite' ){
        layer.options.opacity = 0.75;
    }
     if(feature['properties']['estado'] === 'Finalizado' ){
        layer.options.opacity = 0.4;
    }
    layer.bindPopup("Denuncia ID: "+feature.properties.id+" Descripcion: "+feature.properties.descripcion+" Categoria: "+feature.properties.categoria+" Estado: "+feature.properties.estado+""
    );
  }

  });

layer.addData(JSON.parse(data));
    
layer.addTo(map);
  }); 
       }); 
</script>
                </div>

            </div>

            <div class="card-footer">
         
               
            </div>

           
        </div>
    </div>
@endsection


