<?php

use Illuminate\Database\Seeder;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('admins')->insert([
           ['created_at' => \Carbon\Carbon::now(),
           'username' => 'ganesh',
            'image' => '',
            'first_name' => 'ganesh',
            'last_name' => 'khadka',
            'email' => 'ganesh46@gmail.com',
            'password' => bcrypt('admin123'),
            'status' => '1',],

            ['created_at' => \Carbon\Carbon::now(),
           'username' => 'maruf',
            'image' => '',
            'first_name' => 'asad',
            'last_name' => 'maruf',
            'email' => 'maruf@gmail.com',
            'password' => bcrypt('admin1234'),
            'status' => '1',]

        ]);
    }
}
