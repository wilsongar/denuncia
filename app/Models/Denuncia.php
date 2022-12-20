<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use OwenIt\Auditing\Contracts\Auditable;
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
 * @property intenger $id_user
 */
class Denuncia extends Model implements Auditable
{
    use SoftDeletes;
    use \OwenIt\Auditing\Auditable;
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
        'id_estado',
        'id_user'
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

      public function categoria (){
     return $this-> belongsTo('App\Models\Categoria','id_categoria');

    }
      public function estado (){
     return $this-> belongsTo('App\Models\Estado','id_estado');

    }
    public function user (){
     return $this-> belongsTo('App\Models\User','id_user');

    }
}
