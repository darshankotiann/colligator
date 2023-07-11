<?php

namespace App\Http\Controllers\Frontend;

use App\Notification;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Notification::where('receiver_id',auth()->user()->id)->update(['is_read'=>1]);

        $allNotifications= Notification::with('users')->where('receiver_id',Auth()->user()->id)->where('type', '!=' ,'5')->orderBy('is_read','ASC')->orderBy('created_at','desc')->get();
        return view('frontend.notifications',compact('allNotifications'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $id= base64_decode($id);
        $notificationData= Notification::where('id',$id)->first();
        session()->put(['rating_msg_id'=>$notificationData->rating_msg_id]);
        Notification::where('id',$id)->update(['is_read'=>1]);
        $routeUrl='';
        if($notificationData['rating_type']==1){
            $routeUrl= route('frontend.professorProfile',base64_encode($notificationData['rating_pageId']));
        }
        if($notificationData['rating_type']==2){
            $routeUrl= route('frontend.teacherProfile',base64_encode($notificationData['rating_pageId']));
        }
        if($notificationData['rating_type']==3){
            $routeUrl= route('frontend.universityProfile',base64_encode($notificationData['rating_pageId']));
        }
        return redirect()->to($routeUrl);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function edit(Notification $notification)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Notification $notification)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $id =base64_decode($id);
        Notification::where('id',$id)->delete();
        toastr()->success('Notification delete successfully');
        return redirect()->route('frontend.notification.index');
    }
}
