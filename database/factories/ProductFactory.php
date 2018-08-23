<?php

use App\User;
use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->word,
        'detail' => $faker->paragraph,
        'price' => $faker->numberBetween(100, 1000),
        'discount' => $faker->numberBetween(1, 100),
        'stock' => $faker->numberBetween(0, 200),
        'user_id' => function () {
            return User::all()->random();
        },
        'created_at' => now(),
        'updated_at' => now(),

    ];
});
