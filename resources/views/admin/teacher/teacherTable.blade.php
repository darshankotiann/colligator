<table id="teacherTable" class="table table-striped table-bordered dt-responsive nowrap"
    style="border-collapse: collapse; border-spacing: 0; width: 100%;">
    <thead>
        <tr>
            <th></th>
            <td>Name</td>
            <th>Teacher Code</th>
            <th>School</th>
            <th>Subject</th>
            <th>Country</th>
            <th>Created At</th>
            <th>Status</th>
            <!-- <th>Profile Toggle</th> -->
            <th>Action</th>
        </tr>
    </thead>

</table>
<tfoot>
    <tr>
        <td colspan="10"><button type="button" class="btn btn-danger merabtn">Delete</button></td>
    </tr>
</tfoot>



<script type="text/javascript">
    $(document).ready(function() {
        // DataTable

        var teachertable = $('#teacherTable').DataTable({
            responsive: true,
            "bPaginate": true,
            "bStateSave": true,
            "searching": false,
            processing: true,
            serverSide: true,
            "aaSorting": [
                [0, 1, 2, 3, 4, 5, 6, 7, 8, "asc"]
            ],
            "columnDefs": [{
                    responsivePriority: 1,
                },
                {
                    "bSortable": false,
                },
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
            'lengthMenu': [
                [10, 50, 100, 250, 500, ],
                [10, 50, 100, 250, 500, "All"]
            ],
            lengthChange: true,
            /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
            dom: "'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip",

            buttons: [{
                extend: "csv",
                title: "Teacher List",
                exportOptions: {
                    columns: [':visible :not(:last-child)'],
                },
                className: "btn-sm prints",
                // footer: true,
            }, {
                extend: "excel",
                title: "Teacher List",
                exportOptions: {
                    columns: [':visible :not(:last-child)'],
                },
                className: "btn-sm prints",
                // footer: true,
            }, {
                extend: "print",
                exportOptions: {
                    columns: [':visible :not(:last-child)'],
                },
                title: "<center> Teacher List</center>",
                className: "btn-sm prints",
                // footer: true,
            }, 'colvis'],
            ajax: "{{ route('admin.teacherAjax') }}",
            columns: [{
                    data: 'id'
                },
                {
                    data: 'username'
                },
                {
                    data: 'teachercode'
                },
                {
                    data: 'schoolName'
                },
                {
                    data: 'subjectName'
                },
                {
                    data: 'country'
                },
                {
                    data: 'status'
                },
                {
                    data: 'created_at'
                },

                // {
                //     data: 'profiletoggle'
                // },
                {
                    data: 'action'
                },
            ]
        });


        $('.merabtn').on('click', function(e) {
            var rows_selected = teachertable.column(0).checkboxes.selected();
            var allids = '';
            $.each(rows_selected, function(index, rowId) {
                allids += rowId + ',';
            });
            $.ajax({
                "type": 'post',
                'url': "{{ route('admin.teacher.deleteall') }}",
                "data": {
                    'ids': allids,
                },
                success: function(response) {
                    setTimeout(function() {
                        window.location.reload()
                    }, 1000);
                    if (response == 'success') {
                        toastr.success('Successfully deleted');
                    } else {
                        toastr.error('Please select at least one item');
                    }
                }
            });
        });

        $('.toggle-event').change(function() {
            $.ajax({
                "type": 'post',
                'url': "{{ route('admin.teacher.changeProfileVisibility') }}",
                "data": {
                    'status': $(this).prop('checked'),
                    'id': $(this).data('id'),
                },
                success: function(response) {
                    // setTimeout(function(){ window.location.reload() }, 1000);
                    // if(response=='success'){
                    // toastr.success('Successfully deleted');
                    // }else{
                    //     toastr.error('Error in Deletion');
                    // }
                }
            });
            // sector 11 faridabadh, faridabadh new town
        });
    });
</script>
