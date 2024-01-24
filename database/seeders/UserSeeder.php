<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $admin = User::create([
            'first_name' => 'Admin',
            'last_name' => 'Adminlast',
            'email' => 'admin@mail.ru',
            'phone' => '+998979260757',
            'password' => Hash::make('adminsecret'),
        ]);
        $customer = User::create([
            'first_name' => 'Customer',
            'last_name' => 'Customer',
            'email' => 'customer@mail.ru',
            'phone' => '+998979260745',
            'password' => Hash::make('customersecret'),
        ]);

        
        $shop_manager = User::create([
            'first_name' => 'Shopmanager',
            'last_name' => 'Shopmanager',
            'email' => 'shopmanager@mail.ru',
            'phone' => '+998979260459',
            'password' => Hash::make('shopsecret'),
        ]);
        $admin->roles()->attach(1);
        $customer->roles()->attach(2);
        $shop_manager->roles()->attach(3);
        
        User::factory(10)->hasAttached(Role::find(2))->create();
    }
}
