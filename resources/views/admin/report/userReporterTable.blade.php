<table id="" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Comment</th>
                                <!-- <th>Action</th> -->
                            </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($userLists as $ukey => $svalue) { 
                                    ?>
                                    <tr>
                                        <td><?= $svalue['systemNickname'] ?></td>
                                        <td><?= $svalue['comment'] ?></td>
                                
                                        
                                        <!--     <td>

                             <a href="{{route('admin.report_spam.user.view',base64_encode($svalue['user_id']))}}" class=" mr-3" data-toggle="tooltip" data-placement="top" title="View" data-original-title=""><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <a href="{{route('admin.user.delete',base64_encode($svalue['user_id']))}}" class="text-danger" onclick="return confirm('Are You Sure You want to delete it')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.user.delete',base64_encode($svalue['user_id']))}}" class="text-danger" onclick="return confirm('Are You Sure You want to delete it')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                             ?>
                                            
                                            
                                            
                                        </td> -->
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        {{--{!! $users->render() !!} --}}