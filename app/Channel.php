<?php

namespace App;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    public function users()
    {
        return $this->belongsToMany(User::class,'channel_joined_users')->orderBy('users.mic_access','desc')->orderBy('users.message_access','desc')->orderBy('channel_joined_users.id','DESC');
    }
    public function limitedUsers()
    {
        return $this->belongsToMany(User::class,'channel_joined_users')->orderBy('users.mic_access','desc')->orderBy('users.message_access','desc')->orderBy('channel_joined_users.id','ASC')->limit(10);
    }
}
