<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Denuncia;
use Auth;
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
    public function index(){
    if(Auth::user()->hasRole('Admin')) {        
    $denuncias = \DB::table('denuncias')
    ->where('deleted_at', null)
    ->count();
    $estado_activo = Denuncia::where('id_estado',1)->where('deleted_at', null)
    ->count();
    $estado_inactivo = Denuncia::where('id_estado',2)
    ->where('deleted_at', null)->count();
    $estado_finalizado = Denuncia::where('id_estado',3)
    ->where('deleted_at', null)->count();
        return view('home',compact('denuncias','estado_activo','estado_inactivo','estado_finalizado'));
    }else{
        $denuncias = \DB::table('denuncias')
        ->where('deleted_at', null)
        ->where('id_user', auth()->user()->id)->count();
        $estado_activo = Denuncia::where('id_estado',1)
        ->where('deleted_at', null)
        ->where('id_user', auth()->user()->id)->count();
        $estado_inactivo = Denuncia::where('id_estado',2)
        ->where('deleted_at', null)
        ->where('id_user', auth()->user()->id)->count();
        $estado_finalizado = Denuncia::where('id_estado',3)
        ->where('deleted_at', null)
        ->where('id_user', auth()->user()->id)->count();

        return view('home')->with('denuncias', $denuncias)->with('estado_activo', $estado_activo)->with('estado_inactivo', $estado_inactivo)->with('estado_finalizado', $estado_finalizado)->with('user', Auth::user());  
    }    
    }
}
