<table id="countryTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
    <thead>
    <tr>
        <th></th>
        <th>S.no</th>
        <th>Name</th>
        <th>Country Code</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
        <?php foreach ($countries as $ukey => $country) { ?>
            <tr>
                <td><?= base64_encode($country->id) ?></td>
                <td><?= $ukey+1 ?></td>
                <td><?= $country->name ?></td>
                <td><?= $country->iso2 ?></td>
                <td><div class="badge <?= $country->flag==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $country->flag == 0 ? 'Deactive' : 'Active' ?></div></td>
                <td><a href="{{route('admin.country.status',base64_encode($country->id))}}" class="<?= $country->flag==1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $country->flag==1 ? 'Deactivate ' : 'Activate ' ?>'+'this country')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $country->flag==1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a></td>
            </tr>
        <?php } ?>
    </tbody>
    <tfoot>
        <tr>
            <th colspan="1"><button type="button" class="btn btn-success merabtn">Active </button></th>
            <th colspan="5"><button type="button" class="btn btn-danger merabtnDeactive">Deactive </button></th>
        </tr>
    </tfoot>
</table>
<script type="text/javascript">
    $(document).ready(function(){


var countryTable= $('#countryTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2, "asc" ]],
         "columnDefs": [
            { responsivePriority: 1, targets: 5 },
            {
                'targets': 0,
                'checkboxes': {
                   'selectRow': false
                    }
                }
            ],
      'select': {
         'style': 'multi',
      },
       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Country List", exportOptions: {
                columns: [':visible'],
                       }, className: "btn-sm prints",footer: false,
        }
        , {
            extend: "excel", title: "Country List", exportOptions: {
                columns: [':visible'],
                       },className: "btn-sm prints",footer: false,
        }
        // , {
        //     extend: "pdf", title: "Country List",exportOptions: {
        //         columns: [':visible'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible'],
                       },title: "<center> Country List</center>", className: "btn-sm prints",footer: false, 
        },'colvis'  
        ],
        

    });
      $('.merabtn').on('click', function(e){
                var rows_selected = countryTable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });

                $.ajax({
                    "type": 'post',
                    'url':"{{route('admin.country.activeDeactiveAll')}}",
                    "data":{
                        'type':'Active',
                        'ids':allids,
                    },
                    success:function(response){
                        setTimeout(function(){ window.location.reload() }, 1000);
                        if(response=='success'){
                            toastr.success('Record Successfully Activated');
                        }else{
                            toastr.error('Select atleast single record');
                        }
                    }
                });
        });
      $('.merabtnDeactive').on('click', function(e){
                var rows_selected = countryTable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });

                $.ajax({
                    "type": 'post',
                    'url':"{{route('admin.country.activeDeactiveAll')}}",
                    "data":{
                        'type':'Deactive',
                        'ids':allids,
                    },
                    success:function(response){
                        setTimeout(function(){ window.location.reload() }, 1000);
                        if(response=='success'){
                            toastr.success('Record Successfully Deactivated');
                        }else{
                            toastr.error('Select atleast single record');
                        }
                    }
                });
        });
    });

</script>