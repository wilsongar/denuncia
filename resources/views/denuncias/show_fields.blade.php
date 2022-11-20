<!-- Imagen Field -->
<div class="col-sm-12">
    {!! Form::label('imagen', 'Imagen:') !!}
    <p>{{ $denuncia->imagen }}</p>
</div>

<!-- Descripcion Field -->
<div class="col-sm-12">
    {!! Form::label('descripcion', 'Descripcion:') !!}
    <p>{{ $denuncia->descripcion }}</p>
</div>

<!-- Latitud Field -->
<div class="col-sm-12">
    {!! Form::label('latitud', 'Latitud:') !!}
    <p>{{ $denuncia->latitud }}</p>
</div>

<!-- Longitud Field -->
<div class="col-sm-12">
    {!! Form::label('longitud', 'Longitud:') !!}
    <p>{{ $denuncia->longitud }}</p>
</div>

<!-- Fecha Field -->
<div class="col-sm-12">
    {!! Form::label('fecha', 'Fecha:') !!}
    <p>{{ $denuncia->fecha }}</p>
</div>

<!-- Id Categoria Field -->
<div class="col-sm-12">
    {!! Form::label('id_categoria', 'Id Categoria:') !!}
    <p>{{ $denuncia->id_categoria }}</p>
</div>

<!-- Id Estado Field -->
<div class="col-sm-12">
    {!! Form::label('id_estado', 'Id Estado:') !!}
    <p>{{ $denuncia->id_estado }}</p>
</div>

<!-- Created At Field -->
<div class="col-sm-12">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{{ $denuncia->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="col-sm-12">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{{ $denuncia->updated_at }}</p>
</div>

