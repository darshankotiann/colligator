<table id="reportedStoriesTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>User Name</th>
                                <th>Reason</th>
                                <th>Reported By</th>
                                <th>Is Reported</th>
                                <th>Status Type</th>
                                <th>Reported At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($stories)){
                                foreach ($stories as $ukey => $svalue) {
                                ?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue->id) ?></td> -->
                                        <td><a href="{{route('admin.user.edit',base64_encode($svalue->uploadedById))}}"><?= $svalue->uploadedBy ?></a></td>
                                        <td><?= substr($svalue->reason, 0, 200) ?></td>
                                        <td><a href="{{route('admin.user.edit',base64_encode($svalue->reportedById))}}"><?= $svalue->reportedBy ?></a></td>
                                        <td><?= $svalue->is_reported==1 ? 'Reported'  : 'Pending' ?></td>
                                        <td><?= $svalue->photo_video_type==1 ? 'Image' : 'Video' ?></td>
                                        <td><?= $svalue->created_at ?></td>
                                        <td><div class="badge <?= $svalue->is_delete==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue->is_delete == 1 ? 'Deleted' : 'Active' ?></div></td>

                                        <td>
                                <a href="{{route('admin.report_spam.stories.view',base64_encode($svalue->id))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>

                                <a href="{{route('admin.report_spam.stories.destroy',base64_encode($svalue->storyId))}}" onclick="return confirm('Are you Sure You want to delete the story')" class="mr-3 text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                              <?php 
                             if($svalue->is_reported==0){
                             ?>
                                <a href="" data-toggle="modal" data-target="#reportThankuModal" onclick="openStoryform('{{base64_encode($svalue->id)}}')"> Close</a>
                            
                            <?php
                        }else{ ?>
                            Closed
                        <?php }
                            ?>
                            </td>
                            </tr>
                        <?php } } ?>
                        </tbody>
                    </table>
