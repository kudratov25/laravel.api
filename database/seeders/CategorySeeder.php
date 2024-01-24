<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::create(['name' => [
            'en' => 'Chair',
            'uz' => 'Stoll'
        ]]);
        Category::create(['name' => [
            'en' => 'Table',
            'uz' => 'Xontaxta'
        ]]);
        Category::create(['name' => [
            'en' => 'Sofa',
            'uz' => 'Divan'
        ]]);
        Category::create(['name' => [
            'en' => 'Bed',
            'uz' => 'So\'ri'
        ]]);
    }
}
