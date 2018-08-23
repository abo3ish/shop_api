<?php

use App\User;
use App\Product;
use Faker\Generator as Faker;

$factory->define(App\Review::class, function (Faker $faker) {
    return [
        'body' => $faker->paragraph,
        'user_id' => function () {
            return User::all()->random();
        },
        'product_id' => function () {
            return Product::all()->random();
        },
        'star' => $faker->numberBetween(0, 5),
        'created_at' => now(),
        'updated_at' => now(),
    ];
});
