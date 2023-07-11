<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SchoolView extends Model
{
    protected $table = 'school_view';
    protected $fillable = ['name', 'country_code', 'lang_code', 'school_code'];
    public static function lastSIId($country_code)
    {
        return School::where('is_delete', 0)->where('country_code', $country_code)->count();
    }

    public function subject()
    {
        return $this->hasMany(Subject::class, 'school_code', 'school_code');
    }
    public function active_subjects()
    {
        return $this->subject()->where('subjects.is_delete', '=', 0);
    }
    public function all_active_subjects()
    {
        return $this->subject()->where(['subjects.is_delete' => 0, 'subjects.status' => 1]);
    }
}