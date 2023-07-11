<table id="professorReviewTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>Professor Name</th>
                                <th>Course Code</th>
                                <th>Reviewed By</th>
                                <th>Study Type</th>
                                <th>Rate Professor</th>
                                <th>Easyness Range</th>
                                <th>Report</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($allprofessorsReview)){
                                foreach ($allprofessorsReview as $ukey => $svalue) {
                                    // dd($svalue);
                                    $slug = $svalue['user_added']==1 ? 'user-professor':'professor'; 
                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue['id']) ?></td> -->
                                        <td><a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['ptuId']))}}"><?= $svalue['ptuName'] ?></a></td>
                                        <td><?= $svalue['course_code'] ?></td>
                                        <td> <a href="{{route('admin.user.edit',base64_encode($svalue['userId']))}}" style="color:{{}}"><?= $svalue['usersystemNickname'] ?></a></td>
                                        <td><?= $svalue['study_type']==1 ? 'Online' : 'Offline' ?></td>
                                        <td><?= $svalue['rate_professor'] ?></td>
                                        <td><?= $svalue['easyness_range'] ?></td>
                                        <td><Button type= "button" onclick="showReporters({{$svalue['report']}})" class="btn btn-info">View</Button></td>
                                        <!-- <td><?= !empty($svalue['report'])? 'Reported By users' : '' ?></td> -->
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1 ? 'Deactive' : 'Active' ?></div></td>

                                        <td>
                        <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.professorReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.professorReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
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
                            if(isset($report)){ ?>

                                <a href="{{route('admin.professorReviewReport.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }else{
                             ?>
                                <a href="{{route('admin.professorReview.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php
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
                        <?php } } ?>
                        </tbody>
                    </table>
