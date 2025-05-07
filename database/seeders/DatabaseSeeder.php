<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        $email = 'admin@gmail.com';
        $password = bcrypt('1234');
        $simple_password = '1234';
        User::create([
            'name' => 'Admin',
            'user_name' => 'admin',
            'role' => 0,
            'contact' => '999999999',
            'email' => $email,
            'password' => $password,
            'simple_password' => $simple_password,
        ]);
    }
}
