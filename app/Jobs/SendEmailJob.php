<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Mail;

class SendEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $details;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($details)
    {
        $this->details = $details;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $data= $this->details; 
        $content= $data['content'];
        $subject= $data['subject'];
        $touser= $data['touser'];
        $username=\Config::get('mail.serveremail'); 
        Mail::send('email.mailTemplate',$content , function ($message) use ($username,$subject,$touser) {
            $message->from('noreply@gmail.com', 'Collegator');
            $message->subject($subject);
            $message->to($touser);
        });
    }
}
