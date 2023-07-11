@extends('layouts.app')

@section('content')
<?php use App\Helpers\Helper;
$grade= Helper::GetGrade($professorsReview['grade']);
?>
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            
                            <div class="col-md-11">
                                
                        <h4 class="card-title">View Professor</h4>
                        <p class="card-title-desc">View the below details</p>
                            </div>
                            <div class="col-md-1">
                                <a href="{{route('admin.professorreview')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Course Code</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['course_code']}}">
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">Study Type</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['study_type']==1 ? 'Online' : 'Offline'}}">
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Professor Name</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['ptuName']}}">
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">Professor Rate</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['rate_professor']}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Easyness Range</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['easyness_range']}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Repeat</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['repeat']==1 ? 'Yes' : 'No'}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Textbook</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['textbook']==1 ? 'Textbook use' : 'No textbook'}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Attendance</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['attendance']==1? 'Compulsary' : 'Not compulsary'}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Grade</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$grade}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Message</label>
                                        <textarea class="form-control" disabled>{{$professorsReview['message']}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Like Users</label>
                                        <textarea class="form-control" disabled>{{$professorsReview['likes']}}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Dislike Users</label>
                                        <textarea class="form-control" disabled>{{$professorsReview['dislikes']}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Report/Spam</label>
                                        <textarea class="form-control" disabled>{{$professorsReview['reports']}}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">User System Nickname</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$professorsReview['usersystemNickname']}}">
                                    </div>
                                </div>
                            </div>
                            <hr>
                       <h1>Comments</h1>
                            <hr>
    <table id="professorReviewCommentTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th width="20%">User Nickname</th>
                                <th width="20%">message</th>
                                <th width="20%">Created At</th>
                                <th width="20%">Status</th>
                                <th width="20%">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($professorRatingData)){
                                foreach ($professorRatingData as $ukey => $svalue) {

                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue['id']) ?></td> -->
                                        <td width="20%"><?= $svalue['userData']['systemNickname'] ?></td>
                                        <td width="20%"><?= $svalue['message'] ?></td>
                                        <td width="20%"><?= $svalue['created_at'] ?></td>
                                        <td width="20%"><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1 ? 'Deactive' : 'Active' ?></div></td>

                                        <td width="20%">
                        <?php
                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.professorReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            else
                            { ?>
                                <a href="{{route('admin.professorReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                            <?php
                             if($svalue['is_delete']==1)
                            {
                               $lock= 'mdi-account-lock'; 
                               $color= 'text-success'; 
                               $title= 'Active'; 
                            }else{
                               $lock= 'mdi-account-lock'; 
                               $color= 'text-danger'; 
                               $title= 'Deactive'; 
                            }
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                            <a href="{{route('admin.professorReview.delete',base64_encode($svalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>                                
                                       
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.professorReview.delete',base64_encode($svalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>

                            <?php }
                             ?>
                            </td>
                            </tr>
                        <?php
                            if(!empty($svalue['children'])){
                                foreach ($svalue['children'] as $skey => $scvalue) {
                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($scvalue['id']) ?></td> -->
                                        <td><?= $scvalue['userData']['systemNickname'] ?></td>
                                        <td><?= $scvalue['message'] ?></td>

                                        <td><?= $scvalue['created_at'] ?></td>
                                        <td><div class="badge <?= $scvalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $scvalue['is_delete'] == 1 ? 'Deactive' : 'Active' ?></div></td>

                                        <td>
                        <?php
                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.professorReview.Edit',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }
                            else
                            { ?>
                                <a href="{{route('admin.professorReview.Edit',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }
                             ?>
                            <?php
                            if($scvalue['is_delete']==1)
                            {
                               $lock= 'mdi-account-lock'; 
                               $color= 'text-success'; 
                               $title= 'Active'; 
                            }else{
                               $lock= 'mdi-account-lock'; 
                               $color= 'text-danger'; 
                               $title= 'Deactive'; 
                            }

                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                            <a href="{{route('admin.professorReview.delete',base64_encode($scvalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>                                
                                       
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.professorReview.delete',base64_encode($scvalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>

                            <?php }
                             ?>
                            </td>
                            </tr>
                           <?php }
                         }}}  ?>
                        </tbody>
                    </table>
                    </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->
        </div>
    </div>
<?php //echo "<pre>"; print_r($professorRatingData) ?>
@endsection