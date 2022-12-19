<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use OwenIt\Auditing\Contracts\Auditable;
/**
 * Class Categoria
 * @package App\Models
 * @version November 20, 2022, 7:11 pm UTC
 *
 * @property string $nombre
 * @property string $descripcion
 */
class Categoria extends Model implements Auditable
{
    use SoftDeletes;

    use HasFactory;
    use \OwenIt\Auditing\Auditable;
    public $table = 'categorias';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'nombre',
        'descripcion'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'nombre' => 'string',
        'descripcion' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'nombre' => 'required',
        'descripcion' => 'required'
    ];

    
}
