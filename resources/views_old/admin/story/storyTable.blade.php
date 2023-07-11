<table id="storyTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th></th>
                                <th>System Nickname</th>
                                <th>Photo/Video Type</th>
                                <th>Privacy</th>
                                <th>Created At</th>
                                <th>Total User Views</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                <?php
                                if($story){
                                 foreach ($story as $ukey => $svalue) {
                                    // echo "<pre>"; print_r($svalue); die();
                                  ?>
                                    <tr>
                                        <td><?= base64_encode($svalue['id']) ?></td>
                                        <td><a href="{{route('admin.user.edit',base64_encode($svalue['users']['id']))}}"><?= $svalue['users']['systemNickname'] ?></a></td>
                                        <td><?= $svalue['photo_video_type']==1 ? 'Photo' : 'Video' ?></td>
                                        <td><?= $svalue['privacy']==1 ? 'Followers' : 'All' ?></td>
                                        <td><?= $svalue['created_time'] ?></td>
                                        <td><?= $svalue['user_views'] ?></td>
                                        <td><div class="badge <?= $svalue['is_delete']==1 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['is_delete'] == 1 ? 'Deleted' : 'Active' ?></div></td>
                                        <td>
                               <a href="{{route('admin.story.show',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"><i class="mdi mdi-eye font-size-18"></i></a>

                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                  <a href="{{route('admin.story.destroy',base64_encode($svalue['id']))}}" onclick="return confirm('Are You Sure You want to delete it')" class="mr-3 text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                  <a href="{{route('admin.story.destroy',base64_encode($svalue['id']))}}" onclick="return confirm('Are You Sure You want to delete it')" class="mr-3 text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                            <?php }
                             ?>
                                    </td>
                                </tr>
                                <?php } } ?>
                            </tbody>
                            <tfoot>
                                <tr><th colspan="8"><button type="button" class="btn btn-danger merabtn">Delete</button></th></tr>
                            </tfoot>
                        </table>
                        <script type="text/javascript">
                            
 $(document).ready(function(){

        var storytable= $('#storyTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4,5,6, "asc" ]],
         "columnDefs": [
            { responsivePriority: 1, targets: 7 },
            { "bSortable": false, "aTargets": [7] },
            {
                'targets': 0,
                'checkboxes': {
                   'selectRow': true
                    }
                }
            ],
      'select': {
         'style': 'multi'
      },

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Story List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Story List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Story List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Story List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
            $('.merabtn').on('click', function(e){
                var rows_selected = storytable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });
                $.ajax({
                    "type": 'post',
                    'url':"{{route('admin.story.deleteall')}}",
                    "data":{
                        'ids':allids,
                    },
                    success:function(response){
                        setTimeout(function(){ window.location.reload() }, 1000);
                        if(response=='success'){
                            toastr.success('Successfully deleted');
                        }if(response=='deleteError'){
                            toastr.error('you dont have permission to delete');
                        }else{
                            toastr.error('Error in Deletion');

                        }
                    }
                });
        });
        });
                        </script>