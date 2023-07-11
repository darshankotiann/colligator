<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Admin;
use App\EmailTemplate;
use App\Permissions;
use Mail;
use DB;
use Auth;
use Config;
use App\Helpers\Helper;
class SubAdminController extends Controller
{
    private $page;
    protected $modules=[];
    protected $modcolumns=[];
    public function __construct()
    {
        $this->page=  Config::get('app.paginate');

        $this->modules=['Subadmin','Users','Email','Abuse Word','Professor Profile','High School Profile','Banner','Reviews','Report Statics','Chat Room','Setting','Cms','Country','University','College','School','Subject','Testimonial','Slider','Faqs'];
        $this->modcolumns=['Add','Edit','Delete'];
    }
    public function index(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
        }
        $subadmin= Admin::where(['role'=>2,'is_delete'=>0])->where('id' ,'!=', Auth::guard('admin')->user()->id)->latest()->paginate($this->page);
        if($request->ajax()){
            $startdate= date('Y-m-d',strtotime($request->startdate));
            $enddate= date('Y-m-d',strtotime($request->enddate));
    	       $subadmin= Admin::where(['role'=>2,'is_delete'=>0])->whereBetween('created_at',[$startdate,$enddate])->latest()->paginate($this->page);
            return view('admin.users.subadminTable',compact('subadmin'));
        }
        return view('admin.users.subadmin',compact('subadmin','permissions'));
    }
    public function Add()
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
            if($permissions['add']!=1){
                toastr()->error('You dont have permission to add subadmin');
                return redirect()->route('admin.subadmin.list');
            }
        }
        $modules= $this->modules;
        $modcolumns= $this->modcolumns;
    	return view('admin.users.subadmin_add',compact('modules','modcolumns'));
    }
    public function Store(Request $request)
    {
    	$request->validate([
    		'name' =>'required|min:3|max:55',
            'email' =>'required|unique:admins',
    		'nickname' =>'required|min:3|max:20|unique:admins',
    		'password' =>'required|min:8|regex:/^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!$#%@]).*$/'
    	],[
		   'password.regex'=>'Password must contain at least 1 Smallcase, 1 Uppercase, 1 Number and 1 Special character',
    	]);
    	$mailContent= EmailTemplate::GetEmailTemplate('sub-admin');
        $content['content'] = str_replace(array('{email}','{password}','{url}'), array($request['email'],$request['password'],url('/')), $mailContent->content);
        $Useremail= $request['email'];
        //send mail using helper function
        Helper::mailSend($content,$mailContent->subject,$Useremail);
       
        $Admin = new Admin;           
    	$Admin->name = $request->name;
        $Admin->email = $request->email;
    	$Admin->nickname = $request->nickname;
    	$Admin->password = Hash::make($request->password);
    	$Admin->image = 'user.jpg';
		$Admin->save();
        /*Setting permission for Subadmin*/
        if(!empty($request->permissions)){
            foreach ($request->permissions as $key => $pvalue) {
                    $permission= new Permissions;
                    $permission->subadmin_id=$Admin->id; 
                    $permission->modal_name=$key; 
                foreach ($pvalue as $pkey => $value) {
                    if($pkey==0){
                        $permission->add=1; 
                    }
                    if($pkey==1){
                        $permission->edit=1; 
                    }
                    if($pkey==2){
                        $permission->delete=1; 
                    }
                }
                $permission->save();
            }
        }
        toastr()->success('Sub-admin Created successfully');
        return redirect()->route('admin.subadmin.list');
    }
    public function Edit($id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
            if($permissions['edit']!=1){
                toastr()->error('You dont have permission to edit subadmin');
                return redirect()->route('admin.subadmin.list');
            }
        }
        $modules= $this->modules;
        $modcolumns= $this->modcolumns;

    	$id= base64_decode($id);
        $data= Admin::find($id);
        if(empty($data)){
            toastr()->error('User Id Not Found');
        }else{
            $countdata=DB::select('select count(*) as count from permissions where subadmin_id='.$id.' AND permissions.add =1 AND permissions.edit=1 and permissions.delete=1');
        $parentCheck= $countdata[0]->count==10 ? 'checked':'';            
        $permissions= Permissions::where('subadmin_id',$id)->get()->toArray();
        if(!empty($permissions)){
            foreach ($permissions as $pkey => $pvalue) {
                if($pvalue['add']==1 && $pvalue['edit']==1 && $pvalue['delete']==1 ){
                    $permissions[$pkey]['parent']=1;
                }else{
                    $permissions[$pkey]['parent']=0;
                }
            }
        }
        return view('admin.users.subadmin_edit',compact('data','modules','modcolumns','permissions','parentCheck'));
        }
        return redirect()->route('admin.subadmin.list');
    }
    public function Update(Request $request)
    {
    	$id= base64_decode($request->id);

    	$request->validate([
    		'name' =>'required|min:3|max:55',
            'email' =>'required|unique:admins,email,'.$id,
    		'nickname' =>'required|min:3|max:20|unique:admins,nickname,'.$id,
    	]);
    	$data= Admin::find($id);
    	if(empty($data)){
            toastr()->error('User Id Not Found');
        }else{
            if($data->email != $request->email){
                $mailContent= EmailTemplate::GetEmailTemplate('sub-admin-update');
                $content['content'] = str_replace(array('{oldEmail}','{email}','{url}'), array($data->email,$request['email'],url('/')), $mailContent->content);
                $Useremail= $data->email;
                //send mail using helper function
                Helper::mailSend($content,$mailContent->subject,$Useremail);
            }
            /*Setting permission for Subadmin*/
            Permissions::where('subadmin_id',$id)->delete();
        if(!empty($request->permissions)){
            foreach ($request->permissions as $key => $pvalue) {
                    $permission= new Permissions;
                    $permission->subadmin_id=$id; 
                    $permission->modal_name=$key; 
                foreach ($pvalue as $pkey => $value) {
                    if($pkey==0){
                        $permission->add=1; 
                    }
                    if($pkey==1){
                        $permission->edit=1; 
                    }
                    if($pkey==2){
                        $permission->delete=1; 
                    }
                }
                $permission->save();
            }
        }

            $data->name= $request->name;
            $data->email= $request->email;
            $data->nickname= $request->nickname;
			$data->save();
            toastr()->success('Sub-admin Update Successfully');
        }
        return redirect()->route('admin.subadmin.list');

    }
     public function status($id)
    {
        $id= base64_decode($id);
        $data= Admin::find($id);
        if(empty($data)){
            toastr()->error('Sub Admin Id Not Found');
        }else{
            $newStatus= $data->status==0 ? 1 : 0;
            $data->status  = $newStatus;
            $data->save();
            if($newStatus==1){
                $mailContent= EmailTemplate::GetEmailTemplate('account-deactivated');
                toastr()->error('Sub Admin Deactivated Successfully');
            }else{
                $mailContent= EmailTemplate::GetEmailTemplate('account-activated');
                toastr()->success('Sub Admin Activated Successfully');
            }
            $content['content'] = str_replace(array('{name}'), array($data->name), $mailContent->content);
                $Useremail= $data->email;
                //send mail using helper function
                Helper::mailSend($content,$mailContent->subject,$Useremail);  
        }
        return redirect()->route('admin.subadmin.list');
   
    }
    public function Delete($id)
    {
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
            if($permissions['delete']!=1){
                toastr()->error('You dont have permission to delete subadmin');
                return redirect()->route('admin.subadmin.list');
            }
        }
    	$id= base64_decode($id);
    	$data= Admin::find($id);
        if(empty($data)){
            toastr()->error('Sub Admin Id Not Found');
        }else{
            $mailContent= EmailTemplate::GetEmailTemplate('account-deleted');
                $content['content'] = str_replace(array('{name}'), array($data->name), $mailContent->content);
                $Useremail= $data->email;
                //send mail using helper function
                Helper::mailSend($content,$mailContent->subject,$Useremail);
         	$data->is_delete  = 1;
            $data->save();
            toastr()->error('Sub Admin Deleted Successfully');
        }
        return redirect()->route('admin.subadmin.list');
   
    }
    public function RangeSearch(Request $request)
    {
        $permissions=[];
        if(Auth::guard('admin')->user()->role==2){
            $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
        }

            $startdate= date('Y-m-d',strtotime($request->start));
            $enddate= date('Y-m-d',strtotime($request->end));
               $subadmin= Admin::where(['role'=>2,'is_delete'=>0])->whereBetween('created_at',[$startdate,$enddate])->latest()->paginate($this->page);
        $StartDates= $request->start;
        $EndDates= $request->end;     
        return view('admin.users.subadmin',compact('subadmin','permissions','StartDates','EndDates'));
    }
}
