<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\empresa;
use Faker\Generator as Faker;

$factory->define(empresa::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'descripcion' => $faker->descripcion,
        'estado' => $faker->estado,
        'pais' => $faker->pais,
    ];
});
