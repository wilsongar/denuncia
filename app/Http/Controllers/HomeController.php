<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Denuncia;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    $denuncias = \DB::table('denuncias')
    ->count();
    $estado_activo = Denuncia::where('id_estado','Activo')->count();
    $estado_inactivo = Denuncia::where('id_estado','Inactivo')->count();
    $estado_finalizado = Denuncia::where('id_estado','Finalizado')->count();

        return view('home',compact('denuncias','estado_activo','estado_inactivo','estado_finalizado'));
    }
}
