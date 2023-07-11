<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Story extends Model
{
    public function users()
    {
    	return $this->belongsTo(User::class,'user_id','id');
    }

}
