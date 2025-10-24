<?php

namespace Database\Seeders;

use App\Enums\Role;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use App\Models\Penyakit;
use App\Models\Gejala;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // Penyakit::factory()->count(10)->create();
        // Gejala::factory()->count(30)->create();


        User::factory()->create([
            'name' => 'Akmal admin',
            'email' => 'admin@gmail.com',
            'role' => Role::ADMIN,
            'password' => bcrypt('password123'),
        ]);

    }
}
