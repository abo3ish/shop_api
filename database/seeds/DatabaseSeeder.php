<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 7)->create();
        factory(App\Product::class, 50)->create();
        factory(App\Review::class, 50)->create();
    }
}
