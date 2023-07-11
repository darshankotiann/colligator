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

class CreateProfessorUploadJob implements ShouldQueue
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
        $country= DB::table('countries')->where('iso2',trim($row['country']))->first();
        if($country){
            $university= University::where(['university_code'=>trim($row['university_code']),'country_code'=>trim($row['country'])])->first();
            if($university){
                $college= College::where(['college_code'=>trim($row['college_code']),'university_code'=> trim($row['university_code'])])->first();
                if($college){
                    $countData= ProfessorProfile::lastPId(trim($row['college_code']));
                    $professor_code=trim($row['college_code']).sprintf("%02d", ($countData+1));
                    $pdata =  new ProfessorProfile;
                    $pdata['name']     = trim($row['professor_name']);
                    $pdata['university_code']    = trim($row['university_code']); 
                    $pdata['college_code']    = trim($row['college_code']);
                    $pdata['country']    = trim($row['country']);
                    $pdata['professor_code']    = $professor_code; 
                    $pdata['profile']    = ''; 
                    $pdata['status']    = 1; 
                    $pdata->save();
                }
            }
        }
    }
}
