<table id="universityReviewTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>University Name</th>
                                <th>System Nickname</th>
                                <th>Professor Range</th>
                                <th>Course Range</th>
                                <th>Facility Range</th>
                                <th>Report</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($universitiesReview)){
                                foreach ($universitiesReview as $ukey => $svalue) {
                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue['id']) ?></td> -->
                                        <td><a href="{{route('admin.university.edit',base64_encode($svalue['university_id']))}}"><?= $svalue['ptuName'] ?></a></td>
                                        <td><a href="{{route('admin.user.edit',base64_encode($svalue['userId']))}}"><?= $svalue['usersystemNickname'] ?></a></td>
                                        <td><?= $svalue['professor_range'] ?></td>
                                        <td><?= $svalue['course_range'] ?></td>
                                        <td><?= $svalue['facility_range'] ?></td>
                                        <td><Button type= "button" onclick="showReporters({{$svalue['id']}})" class="btn btn-info">View</Button></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1 ? 'Deactive' : 'Active' ?></div></td>

                                        <td>
                        <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.universityReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.universityReview.Edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
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

                                <a href="{{route('admin.universityReportReview.View',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                             <?php }else{
                             ?>
                                <a href="{{route('admin.universityReviewView',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php
                            }
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                            <a href="{{route('admin.universityReview.delete',base64_encode($svalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>                                
                                       
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.universityReview.delete',base64_encode($svalue['id']))}}" class="mr-3 {{$color}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{$title}}"><i class="mdi {{$lock}} font-size-18"></i></a>

                            <?php }
                             ?>
                            </td>
                            </tr>
                        <?php } } ?>
                        </tbody>
                    </table>
