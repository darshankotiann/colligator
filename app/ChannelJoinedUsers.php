<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class ChannelJoinedUsers extends Model
{
    protected $table= "channel_joined_users";
    protected $fillable= ['channel_id','user_id'];
    public $timestamps = false;
function Users()
{
    return $this->belongsTo(User::class, 'user_id','id');
}
}
