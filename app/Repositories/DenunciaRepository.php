<?php

namespace App\Repositories;

use App\Models\Denuncia;
use App\Repositories\BaseRepository;

/**
 * Class DenunciaRepository
 * @package App\Repositories
 * @version November 20, 2022, 7:17 pm UTC
*/

class DenunciaRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'imagen',
        'descripcion',
        'latitud',
        'longitud',
        'fecha',
        'id_categoria',
        'id_estado'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Denuncia::class;
    }
}
