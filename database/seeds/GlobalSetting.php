<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class GlobalSetting extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	 DB::table('global_settings')->insert([
        'name' => 'Collegator',
        'email' => 'Collegator@gmail.com',
    	'phone_no'=> '+917610090041',
    	'address' => 'Jhotwara Jaipur',
    	'footer'=> 'copy write 2021',
    	'logo'=> 'colegator logo',
    	'favicon'=> 'colegator favicon',
    	'logo_base64'=> 'colegator logo_base64',
        ]);

    }
}
