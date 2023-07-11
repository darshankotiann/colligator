@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            
                            <div class="col-md-11">
                                
                        <h4 class="card-title">View Teacher</h4>
                        <p class="card-title-desc">View the below details</p>
                            </div>
                            <div class="col-md-1">
                                <a href="{{route('admin.teacherreview')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">ptuName</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['ptuName']}}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">School Range</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['schoolrange']}}">
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">Study Type</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['easyrange']}}">
                                       
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Home Range</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['homerange']}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Message</label>
                                        <textarea disabled class="form-control">{{$teacherReview['message']}}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">User System Nickname</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['usersystemNickname']}}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Like Users</label>
                                        <textarea disabled class="form-control">{{$teacherReview['likes']}}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Dislike Users</label>
                                        <textarea disabled class="form-control">{{$teacherReview['dislikes']}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Report/Spam</label>
                                        <textarea disabled class="form-control">{{$teacherReview['reports']}}</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Created At</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$teacherReview['created_at']}}">
                                    </div>
                                </div>
                            </div>
                    
                            <hr>
                                <h1>Comments</h1>
                            <hr>
                            <table id="teacherReviewCommentTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>User Nickname</th>
                                <th>message</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($teacherRatingData)){
                                foreach ($teacherRatingData as $ukey => $svalue) {

                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue['id']) ?></td> -->
                                        <td><?= $svalue['userData']['systemNickname'] ?></td>
                                        <td><?= $svalue['message'] ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1? 'Deactive' : 'Active' ?></div></td>

                                        <td>
                        <?php
                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                 <a href="{{route('admin.teacherReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }
                            else
                            { ?>
                                <a href="{{route('admin.teacherReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                               <!--  <a href="{{route('admin.teacherReview.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a> -->
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
                             ?>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                            <a href="{{route('admin.teacherReview.delete',base64_encode($svalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>                                
                                       
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.teacherReview.delete',base64_encode($svalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>

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

                                <a href="{{route('admin.teacherReview.Edit',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }
                            else
                            { ?>
                                <a href="{{route('admin.teacherReview.Edit',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                                <a href="{{route('admin.teacherReview.View',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                            <a href="{{route('admin.teacherReview.delete',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash font-size-18"></i></a>                                
                                       
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.teacherReview.delete',base64_encode($scvalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-account-lock font-size-18"></i></a>

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
                <!-- end card -->
            </div> <!-- end col -->

            
        </div> <!-- end row -->
    </div>
</div>

@endsection