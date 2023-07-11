@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
@if(isset($failures))

   <div class="alert alert-danger" role="alert">
      <strong>Errors:</strong>
      
      <ul>
         @foreach ($failures as $failure)
            @foreach ($failure->errors() as $error)
                <li>{{ $error }}</li>
            @endforeach
         @endforeach
      </ul>
   </div>
@endif
                        <h4 class="card-title">Report Spam Comments/Replies</h4>
                        <div class="row card-title-desc">
                            <p class=" col-6 "> List Of all report.</p>
                          
                            
                            <div class="form-group mb-0 col-6">
                                {{ Form::open(array('action' => 'Admin\ReportSpamController@allReportSpamCommentAjax','method'=>'post','id'=>'rangeForm')) }}
                                @csrf
                                <div class="row">
                                <label class="col-3">Range Filter</label>
                                    <div class="input-daterange input-group col-6" data-provide="datepicker" data-date-format="dd M yyyy" data-date-autoclose="true">
                                        <input type="text" class="form-control startdate" value="{{isset($StartDates) ? $StartDates : '' }}" onchange="dateAjax()" placeholder="start date" name="start" />
                                        <input type="text" class="form-control enddate" value="{{isset($EndDates) ? $EndDates :''}}" onchange="dateAjax()" placeholder="end date" name="end" />
                                    </div>
                                     <a style="float: right;" class="col-2 btn btn-danger waves-effect waves-light mr-2" href="{{route('admin.all_report_spam_track')}}">Reset  </a>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>
                        <div class="maintable">
                        <table id="allReportcommentTrack" class="table table-striped table-bordered " style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>Namessss</th>
                                <th>Message</th>
                                <th>Type</th>
                                <th>Created At</th>
                                <th>Reporter</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($allCommentTrack)){
                                foreach ($allCommentTrack as $ukey => $svalue) {
                                    $commentType = 0;
                                    $ReviewType = '';
                                    if(array_key_exists('teacher_id', $svalue)){
                                        $commentType = 1;
                                        $ReviewType = 'teacherReview';
                                        $routemsg='universityReview';
                                    }
                                    if(array_key_exists('professor_id', $svalue)){
                                        $commentType = 2;
                                        $ReviewType = 'professorReview';
                                        $routemsg='professorReview';

                                    }
                                    if(array_key_exists('university_id', $svalue)){
                                        $commentType = 3;
                                        $ReviewType = 'universityReview';
                                        $routemsg='universityReview';

                                    }

                                    // $slug = $svalue['user_added']==1 ? 'user-professor':'professor'; 
                                ?>
                                    <tr>

                                        <td><a href="{{route('admin.user.edit',base64_encode($svalue['userId']))}}"><?= $svalue['usersystemNickname'] ?></a></td>
                                        <td>
                                        {{ Str::limit($svalue['message'], 50) }}    
                                        </td>
                                        <td><?= $svalue['parent_id']==0 ? 'Review' : ($svalue['parent_id']==1 ? 'Reply' : 'Comment') ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><Button type= "button" onclick="showReporters({{$svalue['report']}},'{{$ReviewType}}')" class="btn btn-info">View</Button></td>
                                        <td><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                                        <?php
                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.'.$ReviewType.'.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            else
                            { ?>
                                <a href="{{route('admin.'.$ReviewType.'.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            if($svalue['is_delete']==1)
                            {
                               $lock= 'mdi-trash-can'; 
                               $color= 'text-success'; 
                               $title= 'Delete'; 
                            }else{
                               $lock= 'mdi-trash-can'; 
                               $color= 'text-danger'; 
                               $title= 'Delete'; 
                            }
                             ?>
                            <a href="{{route('admin.'.$ReviewType.'Comment.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                            <a onclick="return confirm('Are you sure')" href="{{route('admin.commentsTrack.delete',['id' => base64_encode($svalue['id']),'type' =>$commentType])}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>             
                            <?php }
                            }else
                            { ?>
                            <a onclick="return confirm('Are you sure')" href="{{route('admin.commentsTrack.delete',['id' => base64_encode($svalue['id']),'type' =>$commentType])}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>             
                            <?php }
                             ?>
                            </td>
                            </tr>
                        <?php } } ?>
                        </tbody>
                    </table>

                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Reporters List</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body reportersModal">
        
      </div>
    </div>
  </div>
</div>
<script>
    function showReporters($id,$type){
        $.ajax({
            'type':'post',
            'url' : baseurl+'/admin/showReporters',
            'data':{
                'id':$id,
                'type':$type
            },
            success:function(res){
                // arrayList = res.reports.split(',');
                // arrayListId = res.reportsId.split(',');
                // html='';
                //  arrayList.map((result,key)=>{
                    var id = btoa(res.id);
                    html=`<a target="_blank" href="${baseurl}/admin/users/edit/${id}"> ${res.systemNickname}</a></br>`;
                // });

                $('#exampleModalLong').modal('show');
                $('.reportersModal').html(html);
            }
        });
    }
    setInterval(function() {
        window.location.reload();
    console.log('aa gya');
    }, 60000); 
</script>
@endsection
