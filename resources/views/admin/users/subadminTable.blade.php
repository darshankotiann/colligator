<table id="subadminTable" class="table table-striped table-bordered  nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($subadmin as $skey => $svalue) { ?>
                                    <tr>
                                        <td><?= $svalue['name'] ?></td>
                                        <td><?= $svalue['email'] ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['status']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 1 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                    <a href="{{route('admin.subadmin.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                    <a href="{{route('admin.subadmin.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                             <a href="{{route('admin.subadmin.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status']==0 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status']==0 ? 'Deactivate ' : 'Activate ' ?>'+'this Subadmin')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status']==0 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <a href="{{route('admin.subadmin.delete',base64_encode($svalue['id']))}}" class="text-danger" onclick="return confirm('Are You Sure You Want to delete this Subadmin')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                                <?php }
                            }else
                            { ?>
                                    <a href="{{route('admin.subadmin.delete',base64_encode($svalue['id']))}}" class="text-danger" onclick="return confirm('Are You Sure You Want to delete this Subadmin')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                             ?>                                           
                                    

                                            
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        {!! $subadmin->render() !!}