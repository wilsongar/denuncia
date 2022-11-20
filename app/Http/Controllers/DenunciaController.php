<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateDenunciaRequest;
use App\Http\Requests\UpdateDenunciaRequest;
use App\Repositories\DenunciaRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use App\Models\Estado;
use App\Models\Categoria;
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
        $denuncias = $this->denunciaRepository->all();

        return view('denuncias.index')
            ->with('denuncias', $denuncias);
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

        if (empty($denuncia)) {
            Flash::error('Denuncia not found');

            return redirect(route('denuncias.index'));
        }

        return view('denuncias.edit')->with('denuncia', $denuncia);
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
