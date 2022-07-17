<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UserAddressTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user_addresses')->insert([
            'user_id' => '1',
            'address' => '78 Good Ave',
            'city' => 'Winnipeg',
            'province' => 'Manitoba',
            'country' => 'Canada',
            'postal_code' => 'R3B 8D3',
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('user_addresses')->insert([
            'user_id' => '2',
            'address' => '135 Main Street',
            'city' => 'Ottawa',
            'province' => 'Ontario',
            'country' => 'Canada',
            'postal_code' => 'T4F 9H7',
            'created_at' => now(),
            'updated_at' => now()
        ]);
    }
}