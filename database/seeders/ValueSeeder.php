<?php

namespace Database\Seeders;

use App\Models\Value;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ValueSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Value::create([
            'attribute_id' => '1',
            'name' => ['uz' => 'Qizil', 'en' => 'Red']
        ]);
        Value::create([
            'attribute_id' => '1',
            'name' => ['uz' => 'Yashil', 'en' => 'Green']
        ]);
        Value::create([
            'attribute_id' => '2',
            'name' => ['uz' => 'o`rta ', 'en' => 'medium']
        ]);
        Value::create([
            'attribute_id' => '2',
            'name' => ['uz' => '3x', 'en' => '3x']
        ]);
        Value::create([
            'attribute_id' => '3',
            'name' => ['uz' => 'Plastik', 'en' => 'Plastic']
        ]);
    }
}
