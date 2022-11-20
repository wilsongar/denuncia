<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * Class Denuncia
 * @package App\Models
 * @version November 20, 2022, 7:17 pm UTC
 *
 * @property string $imagen
 * @property string $descripcion
 * @property number $latitud
 * @property number $longitud
 * @property string $fecha
 * @property intenger $id_categoria
 * @property intenger $id_estado
 */
class Denuncia extends Model
{
    use SoftDeletes;

    use HasFactory;

    public $table = 'denuncias';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'imagen',
        'descripcion',
        'latitud',
        'longitud',
        'fecha',
        'id_categoria',
        'id_estado'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'imagen' => 'string',
        'descripcion' => 'string',
        'latitud' => 'double',
        'longitud' => 'double',
        'fecha' => 'date'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'imagen' => 'required',
        'descripcion' => 'required',
        'latitud' => 'required',
        'longitud' => 'required',
        'fecha' => 'required',
        'id_categoria' => 'required',
        'id_estado' => 'required'
    ];

    
}
