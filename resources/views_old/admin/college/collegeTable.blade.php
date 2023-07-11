<table id="collegeTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Name</th>
                                <th>University Name</th>
                                <th>college Code</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                <?php
                                if($colleges){
                                 foreach ($colleges as $ukey => $svalue) { ?>
                                    <tr>
                                        <td><?= base64_encode($svalue['id']) ?></td>
                                        <td><?= $svalue['name'] ?></td>
                                        <td><?= $svalue['university']['name'] ?></td>
                                        <td><?= $svalue['college_code'] ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['status']==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.college.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.college.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                             <a href="{{route('admin.college.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status']==1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status']==1 ? 'Deactivate ' : 'Activate ' ?>'+'this college')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status']==1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){
                                if(!empty($permissions) && $permissions['delete']==1){ ?>  
                                    <form action="{{ route('admin.college.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                        @csrf

                                        @method('DELETE')
                                        <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                    </form>
                                   
                            <?php }
                            }else
                            { ?>
                                 <form action="{{ route('admin.college.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
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
                            <tfoot>
                                <tr><th colspan="7"><button type="button" class="btn btn-danger merabtn">Delete</button></th></tr>
                            </tfoot>
                        </table>
                        <script type="text/javascript">
                            
 $(document).ready(function(){

        var collegetable= $('#collegeTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4, "asc" ]],
         "columnDefs": [
            { responsivePriority: 1, targets: 5 },
            { "bSortable": false, "aTargets": [5] },
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
            extend: "csv", title: "College List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "College List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "College List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> College List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
            $('.merabtn').on('click', function(e){
                var rows_selected = collegetable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });
                $.ajax({
                    "type": 'post',
                    'url':"{{route('admin.college.deleteall')}}",
                    "data":{
                        'ids':allids,
                    },
                    success:function(response){
                        setTimeout(function(){ window.location.reload() }, 1000);
                        if(response=='success'){
                            toastr.success('Successfully deleted');
                        }else{
                            toastr.error('Error in Deletion');
                        }
                    }
                });
        });
        });
                        </script>