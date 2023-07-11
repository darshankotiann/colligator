<?php

namespace App\Jobs;
use App\TeacherProfile;
use App\School;
use App\Subject;
use DB;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class CreateSchoolUploadJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    protected $data;
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $country= DB::table('countries')->where('iso2',trim($this->data['country_code']))->first();
        if($country){
            $result= School::where(['name'=>trim($this->data['high_school_name']),'country_code'=>trim($this->data['country_code'])])->first();
            if(empty($result)){
                
            $countData= School::lastSIId(trim($this->data['country_code']));
            $schoolCode=trim($this->data['country_code']).'SCL'.sprintf("%02d", ($countData+1));
            
            
             $School =  new School;
               $School['name']     = trim($this->data['high_school_name']);
               $School['country_code']    = trim($this->data['country_code']); 
               $School['lang_code']    = (strtoupper(trim($this->data['language']))=='AR' ? 2 : 1); 
               $School['school_code']    = $schoolCode;
               $School->save();
            }
        }
    }
}
