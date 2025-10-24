<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Gejala>
 */
class GejalaFactory extends Factory
{
    public function definition(): array
    {
        return [
            'kode' => 'G' . str_pad($this->faker->unique()->numberBetween(1, 99), 2, '0', STR_PAD_LEFT),
            'nama' => $this->faker->sentence(2),
            'bobot' => $this->faker->randomFloat(2, 0.1, 1.0), // misal bobot antara 0.1–1.0
        ];
    }
}
