<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Message;
use Auth;
class Conversation extends Model
{
    public $fillable=['name','is_group','image','user_id'];
    
    public function messages()
    {
    	return $this->hasMany(Message::class,'conversation_id','id')->where(['is_read'=>1])->where('sender_id','!=',Auth::user()->id);
    }
}
