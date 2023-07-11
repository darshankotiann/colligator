<table id="teacherReviewTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>Teacher Name</th>
                                <th>School Range</th>
                                <th>Easy Range</th>
                                <th>Home Range</th>
                                <th>User System Nickname</th>
                                <th>Reporters</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($allteachersReview)){
                                foreach ($allteachersReview as $ukey => $svalue) {
                                    $slug = $svalue['user_added']==1 ? 'user-teacher':'teacher'; 
                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue['id']) ?></td> -->
                                        <td><a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['ptuId']))}}"><?= $svalue['ptuName'] ?></a></td>
                                        <td><?= $svalue['schoolrange'] ?></td>
                                        <td><?= $svalue['easyrange'] ?></td>
                                        <td><?= $svalue['homerange'] ?></td>
                                        <td> <a href="{{route('admin.user.edit',base64_encode($svalue['userId']))}}"><?= $svalue['usersystemNickname'] ?></a></td>
                                        <td><Button type= "button" onclick="showReporters({{$svalue['report']}})" class="btn btn-info">View</Button></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1 ? 'Deactive' : 'Active' ?></div></td>

                                        <td>
                        <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                 <a href="{{route('admin.teacherReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.teacherReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             if(isset($report)){ ?>

                                <a href="{{route('admin.teacherReportReview.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                             <?php }else{
                             ?>
                                <a href="{{route('admin.teacherReview.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                                <?php
                            }
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
                        <?php } } ?>
                        </tbody>
                    </table>
