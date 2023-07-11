<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class SocialMessaging extends Model
{
    protected $table = 'social_messaging';
    function Users()
    {
        return $this->belongsTo(User::class,'sender_id','id');
    }
}
