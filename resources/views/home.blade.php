@extends('layouts.app')

@section('content')
<br>
<div class="small-box bg-dark text-center col-lg-12 col-6 row">

<h1>APLICACIÓN WEB PARA REPORTES CIUDADANO SOBRE DESPERFECTOS EN LA VIA PÚBLICA</h1> 

</div>

<!-- columnas de contadores -->
    <div class="row">
<div class="col-lg-3 col-6">

<div class="small-box bg-danger"> 
<div class="inner">
<h3>{{$denuncias}}</h3>
<p>Todos los reportes</p>

</div>
<div class="icon">
<i class="ion ion-bag"></i>
</div>
</div>
</div>

<div class="col-lg-3 col-6">

<div class="small-box bg-success">
<div class="inner">
<h3>{{$estado_activo}}<sup style="font-size: 20px"></sup></h3>
<p>Pendiente</p>
</div>
<div class="icon">
<i class="ion ion-stats-bars"></i>
</div>
</div>
</div>

<div class="col-lg-3 col-6">

<div class="small-box bg-warning">
<div class="inner">
<h3>{{$estado_inactivo}}</h3>
<p>En trámite</p>
</div>
<div class="icon">
<i class="ion ion-person-add"></i>
</div>
</div>
</div>

<div class="col-lg-3 col-9">

<div class="small-box bg-primary">
<div class="inner">
<h3>{{$estado_finalizado}}</h3>
<p>Finalizado</p>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
</div>
</div>

<!-- columna imagen 
<div class="col-lg-12 col-9">

<div class="">
<div class="inner">
<div style="width: 100%; height: 250px; background: url('desperfectos.png') no-repeat; background-size: cover;"></div>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
</div>

</div>

-->

<!-- columna imagen 1 -->
<div class="col-lg-3 col-9">

<div class="small-box">
<div class="inner">

<div style="width: 100%; height: 200px; background: url('semaforo.jpg') no-repeat; background-size: cover;"></div>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
</div>
</div>


<!-- columna imagen 2 -->
<div class="col-lg-3 col-9">

<div class="small-box">
<div class="inner">

<div style="width: 100%; height: 200px; background: url('bache2.jpg') no-repeat; background-size: cover;"></div>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
</div>
</div>

<!-- columna imagen 3 -->
<div class="col-lg-3 col-9">

<div class="small-box">
<div class="inner">

<div style="width: 100%; height: 200px; background: url('alumbrado.png') no-repeat; background-size: cover;"></div>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
</div>
</div>

<!-- columna imagen 4 -->
<div class="col-lg-3 col-9">

<div class="small-box">
<div class="inner">

<div style="width: 100%; height: 200px; background: url('basuracalle1.jpg') no-repeat; background-size: cover;"></div>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
</div>
</div>


</div>

</div>
    
 
    </div>
    
  
@endsection
