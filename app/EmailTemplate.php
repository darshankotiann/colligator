<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use DB;

class EmailTemplate extends Authenticatable
{
    use Notifiable;

 	protected $fillable = [
        'title', 'subject', 'status','content','slug',
    ];

    public static function GetEmailTemplate($slug='')
    {
    	    return DB::table('email_templates')->where('slug',$slug)->first();

    }

}
