<?php 
    $bannerType= [1=>'country',2=>'university',3=>'professor',4=>'school',5=>'teacher'];
?>
<table id="bannerTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Banner Type</th>
                                <th>Country Name</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                <?php
                                if($allBanners){
                                 foreach ($allBanners as $ukey => $svalue) { 
                                    // echo "<pre>"; print_r($svalue); die;
                                    ?>
                                    <tr>
                                        <td><?= base64_encode($svalue->id) ?></td>
                                        <td><?= $bannerType[$svalue->type==0 ? 1 :$svalue->type ] ?></td>
                                        <td><?=  $svalue['country']->name ?></td>
                                        <td><img src="{{asset('banner/'.$svalue->image)}}" width="50"></td>
                                        <td><div class="badge <?= $svalue->status==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue->status == 0 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                            <?php
                            if(Auth::guard('admin')->user()->role==2){

                                if(!empty($permissions) && $permissions['edit']==1){ ?>  

                                <a href="{{route('admin.banner.edit',base64_encode($svalue->id))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                            }else
                            { ?>
                                <a href="{{route('admin.banner.edit',base64_encode($svalue->id))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                             ?>
                                <a href="{{route('admin.banner.status',base64_encode($svalue->id))}}" class="<?= $svalue->status==1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue->status==1 ? 'Deactivate ' : 'Activate ' ?>'+'this Banner')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue->status==1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a> 
                            </td>
                                    </tr>
                                <?php } } ?>
                            </tbody>
                            <tfoot>
                                <tr><th colspan="6"><button type="button" class="btn btn-danger merabtn">Delete</button></th></tr>
                            </tfoot>
                        </table>
                        <script type="text/javascript">
                            
 $(document).ready(function(){

        var bannerTable= $('#bannerTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,4,5, "asc" ]],
         "columnDefs": [
            { responsivePriority: 1, targets: 3 },
            { "bSortable": false, "aTargets": [3] },
            {
                'targets': 0,
                'checkboxes': {
                   'selectRow': false
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
            extend: "csv", title: "Banner List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: false,
        }
        , {
            extend: "excel", title: "Banner List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: false,
        }
        // , {
        //     extend: "pdf", title: "Banner List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: false,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Banner List</center>", className: "btn-sm prints",footer: false, 
        },'colvis'  
        ],
        

    });
            $('.merabtn').on('click', function(e){
                var rows_selected = bannerTable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });
                $.ajax({
                    "type": 'post',
                    'url':"{{route('admin.banner.deleteall')}}",
                    "data":{
                        'ids':allids,
                    },
                    success:function(response){
                        setTimeout(function(){ window.location.reload() }, 1000);
                        if(response=='success'){
                            toastr.success('Successfully deleted');
                        }else if(response=='NoPermission'){
                            toastr.error('No permission to delete');
                        }
                        else{
                            toastr.error('Error in deletion');
                        }
                    }
                });
            });
        });
    </script>