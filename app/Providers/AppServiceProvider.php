<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\GlobalSetting;
use App\Conversation;
use App\Notification;
use App\User;
use Auth;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    private $users;

    // public function boot(User $user)
    // {
    //     $data= GlobalSetting::first();
    //     view()->share('global_setting', $data);
    //     $this->getChatMessages();
    //     $this->getNotifications();
    //     $this->users = $user;
    // }
    public function boot(User $user)
    {
        // $data= GlobalSetting::first();
        // view()->share('global_setting', $data);
        $this->globalSetting();
        $this->getChatMessages();
        $this->getNotifications();
        $this->users = $user;
    }
    public function globalSetting()
    {
        view()->composer('*', function ($view) 
        {
        $data= GlobalSetting::first();
        $view->with(['global_setting'=> $data]);
        });
    }
    public function getChatMessages()
    {
        view()->composer('*', function ($view) 
        {
            $countNewMessage=0;
             $allconversation=[];
            if (Auth::check()) {
                $allconversation= Conversation::withCount('messages')->whereRaw('FIND_IN_SET("'.Auth()->user()->id.'",user_id)')->limit(5)->orderBy('messages_count','desc')->get();
                foreach ($allconversation as $ckey => $cvalue) {
                    $usersId= explode(',', $cvalue['user_id']);
                    if(count($usersId)>2){
                        $allconversation[$ckey]['username']=$cvalue['name'];
                        $allconversation[$ckey]['profile']='setting/icon.png';
                        $allconversation[$ckey]['userId']='';
                    }else{
                        if($cvalue['messages_count']>0){
                            $countNewMessage+=1;
                        }
                        $keyNo= array_search(auth()->user()->id, $usersId);
                        unset($usersId[$keyNo]);
                        $usersId =array_values($usersId);
                        $userName= $this->users::select('name','profile','systemNickname')->where('id',$usersId[0])->first();
                        $allconversation[$ckey]['username']=$userName['systemNickname'];
                        $allconversation[$ckey]['profile']=$userName['profile'];
                        $allconversation[$ckey]['userId']=base64_encode($usersId[0]);
                    }
                }

            }
                $view->with(['globalconversation'=> $allconversation,'countNewMessage'=>$countNewMessage]);
        });
    }
    public function getNotifications()
    {
        view()->composer('*', function ($view) 
        {
            $countNewNotification=0;
             $allNotifications=[];
            if (Auth::check()) {
                $allNotifications= Notification::where(['receiver_id'=>Auth()->user()->id])->where('type', '!=' ,'5')->limit(5)->orderBy('id','desc')->get();
                foreach ($allNotifications as $nkey => $value) {
                        $userName= $this->users::select('profile','systemNickname')->where('id',$value['sender_id'])->first();
                        $allNotifications[$nkey]['profile']= $userName['profile'];
                }
                $countNewNotification= Notification::where(['receiver_id'=>Auth()->user()->id,'is_read'=>0])->count();
            }
            $view->with(['globalnotification'=> $allNotifications,'countNewNotification'=>$countNewNotification]);
        });
    }
    
}
