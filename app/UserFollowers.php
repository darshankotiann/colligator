<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserFollowers extends Model
{
   protected $table= 'user_followers';
   protected $fillable = ['following','follower'];
   public $timestamps = false;

}
