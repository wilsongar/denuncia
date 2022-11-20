<?php

namespace Database\Factories;

use App\Models\Denuncia;
use Illuminate\Database\Eloquent\Factories\Factory;

class DenunciaFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Denuncia::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'imagen' => $this->faker->text,
        'descripcion' => $this->faker->text,
        'latitud' => $this->faker->word,
        'longitud' => $this->faker->word,
        'fecha' => $this->faker->word,
        'id_categoria' => $this->faker->word,
        'id_estado' => $this->faker->word,
        'created_at' => $this->faker->date('Y-m-d H:i:s'),
        'updated_at' => $this->faker->date('Y-m-d H:i:s')
        ];
    }
}
