<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class Message extends Model
{
    public $fillable=['message','type','is_read','conversation_id','sender_id','is_delete','report'];
    
    public function user()
    {
    	return $this->belongsTo(User::class,'sender_id','id');
    }
}
