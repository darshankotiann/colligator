<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CollegeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('colleges')->insert([
        	'name'=>'college1',
        	'university_code'=>'IN01',
        	'college_code'=>'IN0101',
        	'status'=>'1',
        	'is_delete'=>'0',
        ]);
    }
}
