<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class SubAdmin extends Authenticatable
{
    use Notifiable;
    protected $guard = 'subAdmin';
    protected $fillable = [
        'name', 'email', 'password','user_access','is_delete',
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];
}
