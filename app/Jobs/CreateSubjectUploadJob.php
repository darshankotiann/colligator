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

class CreateSubjectUploadJob implements ShouldQueue
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
        $row = $this->data;
        $school= School::where(['school_code'=>trim($row['high_school_code'])])->first();
	    if($school){
            $result= Subject::where(['name'=>trim($row['subject_name']),'school_code'=>trim($row['high_school_code'])])->first();
	        if(empty($result))
            {
                $countData= Subject::lastSCId(trim($row['high_school_code']));
                $subjectCode=trim($row['high_school_code']).sprintf("%02d", ($countData+1));
                $Subject =  new Subject;
                $Subject['school_code']    = trim($row['high_school_code']);
                $Subject['name']     = trim($row['subject_name']);
                $Subject['subject_code']    = $subjectCode;
                $Subject->save();
            }
		}
    }
}
