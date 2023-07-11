<table id="userReportTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                            <th>System Nickname</th>
                                <th>Count</th>
                                <th>Email</th>
                                <th>IP</th>
                                <!-- <th>University</th> -->
                                <th>Country</th>
                                <th>Gender</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($users as $ukey => $svalue) { 
                                    ?>
                                    <tr>
                                    <td><?= $svalue['systemNickname'] ?></td>

                                    <td><?= $svalue['professor_review_count']??$svalue['professor_comment_count'] ?></td>
                                        <td><?= $svalue['email'] ?></td>
                                        <td><?= $svalue['ip'] ?></td>
                                        <td><?= $svalue['countryName'] ?></td>
                                        
                                        <td><?= $svalue['gender']==1 ? 'Male':'Female' ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['status']==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.user.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.user.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                             <a href="{{route('admin.user.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status']==1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status']==1 ? 'Deactivate ' : 'Activate ' ?>'+'this user')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status']==1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <a href="{{route('admin.user.delete',base64_encode($svalue['id']))}}" class="text-danger" onclick="return confirm('Are You Sure You want to delete it')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.user.delete',base64_encode($svalue['id']))}}" class="text-danger" onclick="return confirm('Are You Sure You want to delete it')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                             ?>
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        {{--{!! $users->render() !!} --}}