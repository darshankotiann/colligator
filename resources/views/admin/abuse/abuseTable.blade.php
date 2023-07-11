<table id="abusewordtable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>Word</th>
                                <th>Created At</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                <?php
                                if($abusewords){
                                 foreach ($abusewords as $ukey => $svalue) { ?>
                                    <tr>
                                        <td><?= $svalue['word'] ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.abuse-words.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.abuse-words.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <form action="{{ route('admin.abuse-words.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf

                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
                                   
                            <?php }
                            }else
                            { ?>
                                 <form action="{{ route('admin.abuse-words.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf
                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
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
         "aaSorting": [[ 0,1, "asc" ]],
         "columnDefs": [
            { "responsivePriority": 1, "targets": 2 },
            { "bSortable": false, "aTargets": [2] },
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
        , {
            extend: "pdf", title: "Abuse Word List",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Abuse Word List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
            
        });
                        </script>