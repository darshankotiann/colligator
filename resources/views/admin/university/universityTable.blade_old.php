<table id="universityTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Name</th>
                                <th>University Code</th>
                                <th>Country Code</th>
                                <th>Lang</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                           
                            <tfoot>
                                <tr><th colspan="8"><button type="button" class="btn btn-danger merabtn">Delete</button></th></tr>
                            </tfoot>
                            
                        </table>
    <script type="text/javascript">
        $(document).ready(function(){
          var sdate= $('.startdate').val();
          var edate= $('.enddate').val();

        var universitytable= $('#universityTable').DataTable({ 
             processing: true,
            serverSide: true,
            autoWidth: true,
            start:0,
            draw:1,
            pageLength: 10,
            orderable: true, 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": false,
         "aaSorting": [[ 0,1,2,3,4,5, "asc" ]],
         "columnDefs": [
            { responsivePriority: 1, targets: 6 },
            { "bSortable": false, "aTargets": [6] },
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
            extend: "csv", title: "University List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "University List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "University List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> University List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
            // "ajax": "{!! route('admin.university.ajax_data') !!}",
             ajax: {
        url: "{!! route('admin.university.ajax_data') !!}",
        type: 'POST',
        data:{
          'startDate':sdate,
          'endDate':edate,
        },
    },
            'columns': [
             { data: 'id',name:'id' },
             { data: 'name',name:'name' },
             { data: 'university_code',name:'university_code' },
             { data: 'country_code',name:'country_code' },
             { data: 'lang_code',name:'lang_code' },
             { data: 'created_at',name:'created_at'},
             { data: 'status',name:'status'},
             { data: 'Actions',name:'Actions'},
          ],
        

    });
        $('.merabtn').on('click', function(e){
                var rows_selected = universitytable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });
                $.ajax({
                    "type": 'post',
                    'url':"{{route('admin.university.deleteall')}}",
                    "data":{
                        'ids':allids,
                    },
                    success:function(response){
                        setTimeout(function(){ window.location.reload() }, 1000);
                        if(response=='success'){
                            toastr.success('Successfully deleted');
                        }else{
                            toastr.error('Please select at least one item');
                        }
                    }
                });
        });
        });
                        </script>