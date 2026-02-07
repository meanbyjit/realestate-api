<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\RealEstate>
 */
class RealEstateFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->streetName,
            'real_state_type'=>'house',
            'street'=>$this->faker->streetName,
            'external_number'=>'12A',
            'neighborhood'=>$this->faker->city,
            'city'=>$this->faker->city,
            'country'=>'US',
            'rooms'=>3,
            'bathrooms'=>2
        ];
    }
}
