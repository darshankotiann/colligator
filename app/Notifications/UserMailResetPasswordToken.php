<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Lang;
use App\User;
use App\Helpers\Helper;
class UserMailResetPasswordToken extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($token)
    {
        $this->token = $token;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $otp= $this->addOtp($notifiable->getEmailForPasswordReset());
        return (new MailMessage)
        ->from('Collegator@gmail.com','Collegator')
            ->subject(Lang::get('Otp Verification'))
            ->line(Lang::get('Use this Otp to reset your password '.$otp.' '))
            ->action(Lang::get('Reset Password'), url(route('otpreset', ['token' => $this->token], false)))
            ->line(Lang::get('This otp reset link will expire in :count minutes.', ['count' => config('auth.passwords.'.config('auth.defaults.passwords').'.expire')]))
            ->line(Lang::get('If you did not request a password reset, no further action is required.'));
    }
    public function addOtp($email='')
    {
        $otp= Helper::generateOTP();
        session()->put('otp', $otp);
        session()->put('resetemail', $email);
//        User::where('email',$email)->update(['otp'=>$otp]);
        return $otp;
    }
    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
