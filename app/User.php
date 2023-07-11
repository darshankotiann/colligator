<?php

namespace App;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\UserMailResetPasswordToken;
use App\ProfessorRating;
class User extends Authenticatable implements JWTSubject
{
    use Notifiable;
    protected $guard = 'web';
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new UserMailResetPasswordToken($token));
        toastr()->success('Reset Password Mail Send Successfully');
    }
 
    public function ProfessorReview()
    {
        return User::hasMany(ProfessorRating::class,'user_id','id')->where('professor_ratings.parent_id',0);
    }
    public function ProfessorComment()
    {
        return User::hasMany(ProfessorRating::class,'user_id','id')->whereRaw('parent_id != 0');
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','status','is_delete','nickname','systemNickname','profile','ip','university','gender','color','trusted','age','provider', 'provider_id','otp','device_type','device_token','colorpicker','followers','role','mic_access','message_access','login_type','following'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
