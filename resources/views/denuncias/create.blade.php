@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h1>Crear Reporte</h1>
                </div>
            </div>
        </div>
    </section>
  
    <div class="content px-3">

        @include('adminlte-templates::common.errors')
    

        <div class="card">

            {!! Form::open(['route' => 'denuncias.store','enctype' => 'multipart/form-data']) !!}

            <div class="card-body">

                <div class="row">
                
                    @include('denuncias.fields')
                    
                </div>
            </div>
            <div class="card-footer">
                {!! Form::submit('Reportar', ['class' => 'btn btn-primary']) !!}
                <a href="{{ route('denuncias.index') }}" class="btn btn-default">Atrás</a>
            </div>

            {!! Form::close() !!}

        </div>
    </div>
@endsection
