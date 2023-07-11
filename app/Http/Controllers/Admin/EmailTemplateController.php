<?php

namespace App\Http\Controllers\Admin;

use App\EmailTemplate;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Permissions;
use Auth;

class EmailTemplateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Email'])->first();
        }
        $emails= EmailTemplate::all();
        return view('admin.email.list',compact('emails','permissions'));
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
     * @param  \App\EmailTemplate  $emailTemplate
     * @return \Illuminate\Http\Response
     */
    public function show(EmailTemplate $emailTemplate,$id)
    {
       $id= base64_decode($id);
        $editEmailTemplate= EmailTemplate::where('id',$id)->first();
        return view('admin.email.view',compact('editEmailTemplate'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\EmailTemplate  $emailTemplate
     * @return \Illuminate\Http\Response
     */
    public function edit(EmailTemplate $emailTemplate,$id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Email'])->first();
            if($permissions['edit']!=1){
                toastr()->error('You dont have permission to edit Email Template');
                return redirect()->route('admin.email.list');
            }
        }
        $id= base64_decode($id);
        $emailData= EmailTemplate::where('id',$id)->first();
        return view('admin.email.edit',compact('emailData'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\EmailTemplate  $emailTemplate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EmailTemplate $emailTemplate)
    {
       $id= base64_decode($request->id);
        $request->validate([
            'title' =>'required|unique:email_templates,title,'.$id.'|min:8',
            'subject' =>'required',
            'content' =>'required'
        ]);
        $emailData=  EmailTemplate::find($id);
        $emailData->title = $request->title;
        $emailData->subject = $request->subject;
        $emailData->content = $_REQUEST['content'];
        $emailData->save();
        toastr()->success('Email template updated Succesfully');
        return redirect()->route('admin.email.list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\EmailTemplate  $emailTemplate
     * @return \Illuminate\Http\Response
     */
    public function destroy(EmailTemplate $emailTemplate)
    {
        //
    }
}
