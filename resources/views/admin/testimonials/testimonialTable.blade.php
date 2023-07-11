<table id="testimonialTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>Title (En)</th>
                                <th>Title (Ar)</th>
                                <th>Description (En)</th>
                                <th>Description (Ar)</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                <?php
                                if($testimonials){
                                 foreach ($testimonials as $ukey => $svalue) { ?>
                                    <tr>
                                        <td><?= $svalue['title_en'] ?></td>
                                        <td><?= $svalue['title_ar'] ?></td>
                                        <td><?= $svalue['description_en'] ?></td>
                                        <td><?= $svalue['description_ar'] ?></td>
                                        <td><?= $svalue['date_created'] ?></td>
                                        <td><div class="badge <?= $svalue['status']==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.testimonial.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.testimonial.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                             <a href="{{route('admin.testimonial.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status']==1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status']==1 ? 'Deactivate ' : 'Activate ' ?>'+'this testimonial')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status']==1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <form action="{{ route('admin.testimonial.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf

                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
                                   
                            <?php }
                            }else
                            { ?>
                                 <form action="{{ route('admin.testimonial.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf
                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
                            <?php }
                             ?>
                                        </td>
                                    </tr>
                                <?php } } ?>
                            </tbody>
                        </table>