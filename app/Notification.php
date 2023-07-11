<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    protected $fillable = ['sender_id','receiver_id','type','is_read','message','rating_pageId','rating_type','rating_msg_id'];
    
    public function users()
    {
    	return Notification::belongsTo(User::class,'sender_id','id');
    }
}
