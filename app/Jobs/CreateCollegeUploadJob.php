<?php

namespace App\Jobs;

use App\ProfessorProfile;
use App\University;
use App\College;
use DB;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class CreateCollegeUploadJob implements ShouldQueue
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

        $university= University::where(['university_code'=>trim($this->data['university_code'])])->first();
	    if($university){
	        $countData= College::lastCIId(trim($this->data['university_code']));
            $oldcollege= College::where(['university_code'=>trim($this->data['university_code']),'name'=>trim($this->data['college_name'])])->first();
            if(empty($oldcollege)){
                $college_code=trim($this->data['university_code']).sprintf("%02d", ($countData+1));
                 $College=  new College;
                   $College['name']     = trim($this->data['college_name']);
                   $College['university_code']    = trim($this->data['university_code']); 
                   $College['college_code']    = trim($college_code);  
                   $College->save();
            }
	    }
    }
}
