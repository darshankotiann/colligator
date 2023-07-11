<table id="abusewordtable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>user</th>
                                <th>comment</th>
                                <th>Type</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                <?php
                                if($abusewords){

                                 foreach ($abusewords as $ukey => $svalue) { 
                                    $commentType = 0;
                                    if(array_key_exists('teacher_id', $svalue)){
                                        $commentType = 1;
                                    }
                                    if(array_key_exists('professor_id', $svalue)){
                                        $commentType = 2;
                                    }
                                    if(array_key_exists('university_id', $svalue)){
                                        $commentType = 3;
                                    }
                                ?>
                                    <tr>
                                        <td style="color:{{$svalue['users']->colorpicker ?? ''}}"><?= $svalue['users']->systemNickname??'' ?></td>
                                        <td><?= $svalue['message'] ?></td>
                                        <td><?= $svalue['parent_id']==0 ? 'Review' : 'Comment' ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><?= $svalue['is_delete']==0 ? 'Active' : 'Deleted' ?></td>
                                        <td>
                           
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <a href="{{ route('admin.abuse-words.'.$urlword.'destroy',['id' => base64_encode($svalue['id']),'type' =>$commentType])}}" onclick="return confirm('Are You Sure You want to delete it')"><i class="mdi mdi-trash-can font-size-18 text-danger"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{ route('admin.abuse-words.'.$urlword.'destroy',['id' => base64_encode($svalue['id']),'type' =>$commentType])}}" onclick="return confirm('Are You Sure You want to delete it')"><i class="mdi mdi-trash-can font-size-18 text-danger"></i></a>
                            <?php }
                             ?>
                                        </td>
                                    </tr>
                                <?php } } ?>
                            </tbody>
                            
                        </table>
                        <script type="text/javascript">
                            
 $(document).ready(function(){

        var abusewordtable= $('#abusewordtable').DataTable({ 
         "responsive": true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4, "asc" ]],
         "columnDefs": [
            { "responsivePriority": 1, "targets": 5 },
            { "bSortable": false, "aTargets": [5] },
            ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Abuse Word List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Abuse Word List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Abuse Word List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Abuse Word List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
            
        });
                        </script>