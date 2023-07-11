<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
class Country extends Model
{
    public $table= 'countries';

    public  function Banners()
    {
        return $this->belongsTo(Banner::class,'iso2','country_code');
    }

}
