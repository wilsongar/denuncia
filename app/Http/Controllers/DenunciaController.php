<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateDenunciaRequest;
use App\Http\Requests\UpdateDenunciaRequest;
use App\Repositories\DenunciaRepository;
use App\Http\Controllers\AppBaseController;

use App\Http\Controllers\DenunciaController;
use Illuminate\Http\Request;
use App\Models\Estado;
use App\Models\Categoria;
use App\Models\Denuncia;
use Auth;

use Flash;
use Response;

class DenunciaController extends AppBaseController
{
    /** @var DenunciaRepository $denunciaRepository*/
    private $denunciaRepository;

    public function __construct(DenunciaRepository $denunciaRepo)
    {
        $this->denunciaRepository = $denunciaRepo;
    }

    /**
     * Display a listing of the Denuncia.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function index(Request $request)
    {   
        if(auth()->user()->hasRole('Usuario')){
                $denuncias= Denuncia::where('id_user', auth()->user()->id)->get();  

        }else {
                 $denuncias= $this->denunciaRepository->all();
        }
        

        return view('denuncias.index')
            ->with('denuncias', $denuncias)->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new Denuncia.
     *
     * @return Response
     */
    public function create()
    {
        
        $estado = Estado::pluck('nombre','id');
        $categoria = Categoria::pluck('nombre','id');    
        return view('denuncias.create',compact('estado','categoria'));
    
    }
    public function mapa(){


        $denuncias = $this->denunciaRepository->all(); 

        $estado = Estado::pluck('nombre','id');
        $estado->prepend('Todos');
        $categoria = Categoria::pluck('nombre','id');
         $categoria->prepend('Todos'); 
         return view('denuncias.mapa_denuncia')
            ->with('denuncias', $denuncias)->with('categoria',$categoria)->with('estado',$estado);
    }  

    public function geojson (Request $request) 
    {

        $categoria = $request->categoria;
        $estado = $request->estado;


        $locales;
        if(auth()->user()->hasRole('Usuario')){ 
        if($categoria==0 & $estado==0 ){
            $locales =  Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->where('id_user', auth()->user()->id)->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->get();
        }
        if($categoria>0 & $estado==0 ){
            $locales =  Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->where('id_user', auth()->user()->id)->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->where('id_categoria',$categoria)->get();
        }
        if($categoria==0 & $estado>0 ){
            $locales =  Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->where('id_user', auth()->user()->id)->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->where('id_estado',$estado)->get();
        }
        if($categoria>0 & $estado>0 ){
            $locales = Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->where('id_user', auth()->user()->id)->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->where(['id_categoria'=>$categoria, 'id_estado'=>$estado])->get();
        }

        }else {
                 if($categoria==0 & $estado==0 ){
            $locales =  Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->get();
        }
        if($categoria>0 & $estado==0 ){
            $locales =  Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->where('id_categoria',$categoria)->get();
        }
        if($categoria==0 & $estado>0 ){
            $locales =  Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->where('id_estado',$estado)->get();
        }
        if($categoria>0 & $estado>0 ){
            $locales = Denuncia::join('estados','denuncias.id_estado', '=','estados.id',)->join('categorias','denuncias.id_categoria', '=','categorias.id')->select('denuncias.*', 'categorias.nombre as categoria', 'estados.nombre as estado')->where(['id_categoria'=>$categoria, 'id_estado'=>$estado])->get();
        }
        }
        


        $original_data = json_decode($locales, true);
        $features = array();

        foreach($original_data as $key => $value) { 
            $features[] = array(
                    'type' => 'Feature',
                    'geometry' => array('type' => 'Point', 'coordinates' => array((float)$value['longitud'],(float)$value['latitud'])),

                    'properties' => array('id' => $value['id'], 'descripcion' => $value['descripcion'],'categoria_id' => $value['id_categoria'],'estado_id' => $value['id_estado'],'fecha' => $value['fecha'],'categoria' => $value['categoria'], 'estado' => $value['estado']),
                    );
            };   

        $allfeatures = array('type' => 'FeatureCollection', 'features' => $features);
        return json_encode($allfeatures, JSON_PRETTY_PRINT);

    }
    /**
     * Store a newly created Denuncia in storage.
     *
     * @param CreateDenunciaRequest $request
     *
     * @return Response
     */
    public function store(CreateDenunciaRequest $request)
    {
       $input = $request->all();
         if($request->hasFile('imagen')){
            $input['imagen']=$request->file('imagen')->store('uploads','public');   
        }
        $denuncia = $this->denunciaRepository->create($input);

        Flash::success('Denuncia saved successfully.');

        return redirect(route('denuncias.index'));
    }

    /**
     * Display the specified Denuncia.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $denuncia = $this->denunciaRepository->find($id);

        if (empty($denuncia)) {
            Flash::error('Denuncia not found');

            return redirect(route('denuncias.index'));
        }

        return view('denuncias.show')->with('denuncia', $denuncia);
    }

    /**
     * Show the form for editing the specified Denuncia.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $denuncia = $this->denunciaRepository->find($id);
        $estado = Estado::pluck('nombre','id');
        $categoria = Categoria::pluck('nombre','id');   

        if (empty($denuncia)) {
            Flash::error('Denuncia not found');

            return redirect(route('denuncias.index'));
        }

        return view('denuncias.edit',compact('denuncia','estado','categoria'));
    }

    /**
     * Update the specified Denuncia in storage.
     *
     * @param int $id
     * @param UpdateDenunciaRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateDenunciaRequest $request)
    {
        $denuncia = $this->denunciaRepository->find($id);

        if (empty($denuncia)) {
            Flash::error('Denuncia not found');

            return redirect(route('denuncias.index'));
        }

        $denuncia = $this->denunciaRepository->update($request->all(), $id);

        Flash::success('Denuncia updated successfully.');

        return redirect(route('denuncias.index'));
    }

    /**
     * Remove the specified Denuncia from storage.
     *
     * @param int $id
     *
     * @throws \Exception
     *
     * @return Response
     */
    public function destroy($id)
    {
        $denuncia = $this->denunciaRepository->find($id);

        if (empty($denuncia)) {
            Flash::error('Denuncia not found');

            return redirect(route('denuncias.index'));
        }

        $this->denunciaRepository->delete($id);

        Flash::success('Denuncia deleted successfully.');

        return redirect(route('denuncias.index'));
    }
}
