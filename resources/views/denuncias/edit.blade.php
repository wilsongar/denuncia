@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h1>Edit Denuncia</h1>
                </div>
            </div>
        </div>
    </section>

    <div class="content px-3">

        @include('adminlte-templates::common.errors')

        <div class="card">

            {!! Form::model($denuncia, ['route' => ['denuncias.update', $denuncia->id], 'method' => 'patch']) !!}

            <div class="card-body">
                <div class="row">
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
<img src="{{ asset('storage').'/'.$denuncia->imagen}}" width="50" height="50">
</div>

</div>
</div>
<!-- Descripcion Field -->
<div class="form-group col-sm-6 ">
    {!! Form::label('descripcion', 'Descripcion:') !!}
    {!! Form::text('descripcion', null, ['class' => 'form-control','disabled']) !!}
</div>

<!-- Latitud Field -->
<div class="form-group col-sm-6 d-none">
    {!! Form::label('latitud', 'Latitud:') !!}
    {!! Form::text('latitud', null, ['class' => 'form-control','disabled']) !!}
</div>

<!-- Longitud Field -->
<div class="form-group col-sm-6 d-none">
    {!! Form::label('longitud', 'Longitud:') !!}
    {!! Form::text('longitud', null, ['class' => 'form-control','disabled']) !!}
</div>

<!-- Fecha Field -->
<div class="form-group col-sm-6">
    {!! Form::label('id_categoria', 'Id Categoria:') !!}
    {!! Form::select('id_categoria', $categoria, null, ['class' => 'form-control custom-select','placeholder'=>'Selecione una opcion']) !!}
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
    {!! Form::text('fecha', null, ['class' => 'form-control','id'=>'fecha','disabled']) !!}
</div>

<!-- Id Estado Field -->
<div class="form-group col-sm-6">
    {!! Form::label('id_estado', 'Id Estado:') !!}
    {!! Form::select('id_estado',$estado, null, ['class' => 'form-control custom-select','placeholder'=>'Selecione una opcion']) !!}
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
     {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
                <a href="{{ route('denuncias.index') }}" class="btn btn-default">Cancel</a>
         
    <style type="text/css">
                   #map { height: 350px; width:1350px; }
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
                </div>
            </div>

          

            {!! Form::close() !!}

        </div>
    </div>
@endsection