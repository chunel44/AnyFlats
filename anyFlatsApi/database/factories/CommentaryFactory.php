<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CommentaryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $arrayValues = ['Maquinaria', 'Motocicletas', 'Bicicletas'];
        return [
            'email' => $this->faker->email(),
            'edad' => $this->faker->numberBetween(17, 70),
            'tipo' => $arrayValues[rand(0,2)],
        ];
    }
}
