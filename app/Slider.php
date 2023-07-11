<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Country;
class Slider extends Model
{
    public function countryData()
    {
    	// return $this->belongsTo(Country::class,'country','id');
    	    	return $this->belongsTo(Country::class,'country','id')->withDefault(
    		['name'=>'No Country']
    	);
    }
}
