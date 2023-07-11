<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GlobalSetting extends Model
{
     protected $fillable = [
        'name', 'email', 'logo','phone_no','favicon','logo_base64','address','footer',
    ];
}
