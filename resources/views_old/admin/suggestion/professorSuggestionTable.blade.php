<table id="professorSuggestionTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <!-- <th></th> -->
                                <th>Professor Name</th>
                                <th>Suggestion</th>
                                <th>Reviewed By</th>
                                <th>Created At</th>
<!--                                 <th>Status</th> -->
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($suggestions)){
                                foreach ($suggestions as $ukey => $svalue) {
                                    if($svalue['professor']){
                                        $slug = $svalue['professor']['user_added']==1 ? 'user-professor':'professor'; 
                                    
?>
                                    <tr>
                                        <!-- <td><?= base64_encode($svalue['id']) ?></td> -->
                                        <td><a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['professor']['id']))}}"><?= $svalue['professor']['name'] ?></a></td>
                                        <td><?= $svalue['suggestion'] ?></td>
                                        <td>
                                            <?php
                                            if(!empty($svalue['user'])){ ?>
                                               <a href="{{route('admin.user.edit',base64_encode($svalue['user']['id']))}}">{{$svalue['user']['systemNickname']}}</a>
                                            <?php }else{
                                                echo "-";
                                            }
                                            ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
<!--                                         <td><div class="badge <?= $svalue['is_delete']==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 0 ? 'Deactive' : 'Active' ?></div></td>

                                         -->
                                        <td>
                        <?php
                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.profile_corrections.professorView',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                            <?php }
                            else
                            { ?>
                                <a href="{{route('admin.profile_corrections.professorView',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>
                              <?php }
                             if($svalue['is_approved']==0){
                             ?>
                                <a href="" data-toggle="modal" data-target="#suggestionThankuModal" onclick="openthankuform('{{base64_encode($svalue['id'])}}')"> Close</a>
                            
                            <?php
                        }else{ ?>
                            Closed
                        <?php }
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                           <!--  <a href="{{route('admin.professorReview.delete',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>   -->                              
                                       
                            <?php }
                            }else
                            { ?>
<!--                                 <a href="{{route('admin.professorReview.delete',base64_encode($svalue['id']))}}" class="mr-3 text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a> -->

                            <?php }
                             ?>
                            </td>
                            </tr>
                        <?php } }} ?>
                        </tbody>
                    </table>
