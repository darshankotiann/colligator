<table id="universityTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
    <thead>
        <tr>
            <th></th>
            <th>Name</th>
            <th>University Code</th>
            <th>Country Code</th>
            <th>Language</th>
            <th>Rate University</th>
            <th>University Review Most Count</th>
            <th>Created At</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        if (!empty($universities)) {
            foreach ($universities as $ukey => $svalue) {
        ?>
                <tr>
                    <td><?= base64_encode($svalue['id']) ?></td>
                    <td><?= $svalue['name'] ?></td>
                    <td><?= $svalue['university_code'] ?></td>
                    <td><?= $svalue['countryName'] ?></td>
                    <td><?= $svalue['lang_code'] == 1 ? 'English' : 'Arabic' ?></td>
                    <td><?= number_format($svalue['rateuniversity'], 2, ',', ' '); ?></td>
                    <td><?= $svalue['university_review_most_count'] ?></td>
                    <td><?= $svalue['created_at'] ?></td>
                    <td>
                        <div class="badge <?= $svalue['status'] == 0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div>
                    </td>
                    <td>
                        <?php
                        if (Auth::guard('admin')->user()->role == 2) {

                            if (!empty($permissions) && $permissions['edit'] == 1) { ?>

                                <a href="{{route('admin.university.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                            <?php }
                        } else { ?>
                            <a href="{{route('admin.university.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                        <?php }
                        ?>
                        <a href="{{route('admin.university.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status'] == 1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status'] == 1 ? 'Deactivate ' : 'Activate ' ?>'+'this university')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status'] == 1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>

                        <?php
                        if (Auth::guard('admin')->user()->role == 2) {
                            if (!empty($permissions) && $permissions['delete'] == 1) { ?>
                                <form action="{{ route('admin.university.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm" style="width: auto;">
                                    @csrf

                                    @method('DELETE')
                                    <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                                </form>

                            <?php }
                        } else { ?>
                            <form action="{{ route('admin.university.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm" style="width: auto;">
                                @csrf
                                @method('DELETE')
                                <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                            </form>
                        <?php }
                        ?>

                    </td>
                </tr>
        <?php }
        } ?>
    </tbody>
    <tfoot>
        <tr>
            <th colspan="10"><button type="button" class="btn btn-danger merabtn">Delete</button></th>
        </tr>
    </tfoot>
</table>
@if(!empty($universities))
    {{ $universities->links() }}
@endif
<script type="text/javascript">
    $(document).ready(function() {
        $('#universityTable').DataTable({
            responsive: true,
            "bPaginate": true,
            "bStateSave": true,
            "searching": true,
            "paging": false,
            "aaSorting": [
                [0, 1, 3, 4, 5, 6, 7, 8, "asc"]
            ],
            "columnDefs": [{
                    responsivePriority: 1,
                    targets: 9
                },
                {
                    "bSortable": false,
                    "aTargets": [9]
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
            buttons: [
                /*{
                           extend: "copy", className: "btn-sm prints"
                       }
                       ,*/
                {
                    extend: "csv",
                    title: "User",
                    exportOptions: {
                        columns: [':visible :not(:last-child)'],
                    },
                    className: "btn-sm prints",
                    footer: true,
                }, {
                    extend: "excel",
                    title: "User",
                    exportOptions: {
                        columns: [':visible :not(:last-child)'],
                    },
                    className: "btn-sm prints",
                    footer: true,
                }
                // , {
                //     extend: "pdf", title: "User",exportOptions: {
                //         columns: [':visible :not(:last-child)'],
                //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
                // }
                , {
                    extend: "print",
                    exportOptions: {
                        columns: [':visible :not(:last-child)'],
                    },
                    title: "<center> User</center>",
                    className: "btn-sm prints",
                    footer: true,
                }, 'colvis'
            ],
            // "order": [],
            // "aaSorting": []



        });




        $('.merabtn').on('click', function(e) {
            var rows_selected = universitytable.column(0).checkboxes.selected();
            var allids = '';
            $.each(rows_selected, function(index, rowId) {
                allids += rowId + ',';
            });
            $.ajax({
                "type": 'post',
                'url': "{{route('admin.university.deleteall')}}",
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
                        toastr.error('Error in Deletion');
                    }
                }
            });
        });
    });


// get all pagination links
const paginationLinks = document.querySelectorAll('.pagination a');

// loop through each link and add a click event listener
paginationLinks.forEach(link => {
  link.addEventListener('click', (event) => {
    event.preventDefault(); // prevent the default link behavior
    
    const pageUrl = link.href; // get the link URL
    window.location.href = pageUrl; // redirect to the link URL
  });
});


</script>