<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\AdminResetPasswordNotification;
class Admin extends Authenticatable
{
	use Notifiable;
	protected $guard = 'admin';
    
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new AdminResetPasswordNotification($token));
        toastr()->success('Reset Password Mail Send Successfully');
    }
    protected $fillable = [
        'name', 'email', 'password','status',
    ];
    
    protected $hidden = [
        'password', 'remember_token',
    ];
}
