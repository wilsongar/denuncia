<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/mapa_denuncias', [App\Http\Controllers\DenunciaController::class, 'mapa'])->name('mapa');
Route::get('/geojson', [App\Http\Controllers\DenunciaController::class, 'geojson'])->name('geojson');

Route::resource('estados', App\Http\Controllers\EstadoController::class);


Route::resource('categorias', App\Http\Controllers\CategoriaController::class);


Route::resource('denuncias', App\Http\Controllers\DenunciaController::class);


Route::resource('users', App\Http\Controllers\UserController::class);
