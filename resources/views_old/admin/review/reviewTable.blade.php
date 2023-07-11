<table id="teacherTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Professor/University/Teacher Name</th>
                                <th>System Nickname</th>
                                <th>Message</th>
                                <th>Report</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($allReview)){
                                foreach ($allReview as $ukey => $svalue) { ?>
                                    <tr>
                                        <td><?= base64_encode($svalue['id']) ?></td>
                                        <td><?= $svalue['ptuName'] ?></td>
                                        <td><?= $svalue['usersystemNickname'] ?></td>
                                        <td><?= $svalue['message'] ?></td>
                                        <td><?= !empty($svalue['report'])? 'Reported By users' : '' ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['is_delete']==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 0 ? 'Deactive' : 'Active' ?></div></td>

                                        <td>
<!--                         <?php
                            $slug=  Request::segment(2)== 'user-teacher' ? 'user-teacher' : 'teacher';
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                             <a href="{{route('admin.teacher.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status']==1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status']==1 ? 'Deactivate ' : 'Activate ' ?>'+'this teacher profile')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status']==1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>

                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <form action="{{ route('admin.teacher.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf

                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
                                   
                            <?php }
                            }else
                            { ?>
                                 <form action="{{ route('admin.teacher.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf
                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
                            <?php }
                             ?>
                                         -->
                                        </td>
                                        
                                    </tr>
                                <?php } } ?>
                            </tbody>
                        </table>
                        {{--{!! $teacher->render() !!}--}}