<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permissions extends Model
{
    protected $fillable = [
       'subadmin_id', 'modal_name', 'add','edit','delete',
    ];
}
