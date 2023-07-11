<table id="professorTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
    <thead>
        <tr>
            <th></th>
            <th>Name</th>
            <th>College</th>
            <th>University</th>
            <th>Country</th>
            <th>Professor Review Most Count</th>
            <th>Rate Professor</th>
            <th>Created At</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($professor as $ukey => $svalue) {  ?>
            <tr>
                <td><?= base64_encode($svalue['id']) ?></td>
                <td><?= $svalue['name'] ?></td>
                <td><?= $svalue['college']['name'] ?? "" ?></td>
                <td><?= $svalue['university']['name'] ?? "" ?></td>
                <td><?= $svalue['countryName'] ?></td>
                <td><?= $svalue['professor_review_most_count'] ?></td>
                <td><?= number_format($svalue['rateprofessor'], 2, ',', ' '); ?></td>
                <td><?= $svalue['created_at'] ?></td>
                <td>
                    <div class="badge <?= $svalue['status'] == 0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div>
                </td>
                <td style="display:flex !important">
                    <?php
                    $slug =  Request::segment(2) == 'user-professor' ? 'user-professor' : 'professor';
                    if (Auth::guard('admin')->user()->role == 2) {

                        if (!empty($permissions) && $permissions['edit'] == 1) { ?>

                            <a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                        <?php }
                    } else { ?>
                        <a href="{{route('admin.'.$slug.'.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                    <?php }
                    ?>
                    <a href="{{route('admin.professor.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status'] == 1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status'] == 1 ? 'Deactivate ' : 'Activate ' ?>'+'this user')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status'] == 1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>

                    <?php
                    if (Auth::guard('admin')->user()->role == 2) {
                        if (!empty($permissions) && $permissions['delete'] == 1) { ?>
                            <form action="{{ route('admin.professor.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                                @csrf

                                @method('DELETE')
                                <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                            </form>

                        <?php }
                    } else { ?>
                        <form action="{{ route('admin.professor.destroy',base64_encode($svalue['id'])) }}" method="POST" id="deleteForm">
                            @csrf
                            @method('DELETE')
                            <i onclick="confirm('Are You Sure You want to delete it') ? $(this).closest('#deleteForm').submit() : '' " class="mdi mdi-trash-can font-size-18 text-danger"></i>
                        </form>
                    <?php }
                    ?>
                </td>
            </tr>
        <?php } ?>
    </tbody>
    <tfoot>
        <tr>
            <th colspan="10"><button type="button" class="btn btn-danger merabtn">Delete</button></th>
        </tr>
    </tfoot>
</table>
@if(!empty($professor))
    {{ $professor->links() }}
@endif
<script type="text/javascript">
    $(document).ready(function() {

        var professortable = $('#professorTable').DataTable({
            responsive: true,
            "bPaginate": true,
            "bStateSave": true,
            "searching": true,
            "paging": false,
            "aaSorting": [
                [0, 1, 2, 3, 4, 5, 6, 7, 8, "asc"]
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
            'pageLength': 50,
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
                    title: "Professor List",
                    exportOptions: {
                        columns: [':visible :not(:last-child)'],
                    },
                    className: "btn-sm prints",
                    footer: true,
                }, {
                    extend: "excel",
                    title: "Professor List",
                    exportOptions: {
                        columns: [':visible :not(:last-child)'],
                    },
                    className: "btn-sm prints",
                    footer: true,
                }
                // , {
                //     extend: "pdf", title: "Professor List",exportOptions: {
                //         columns: [':visible :not(:last-child)'],
                //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
                // }
                , {
                    extend: "print",
                    exportOptions: {
                        columns: [':visible :not(:last-child)'],
                    },
                    title: "<center> Professor List</center>",
                    className: "btn-sm prints",
                    footer: true,
                }, 'colvis'
            ],


        });
        $('.merabtn').on('click', function(e) {
            var rows_selected = professortable.column(0).checkboxes.selected();
            var allids = '';
            $.each(rows_selected, function(index, rowId) {
                allids += rowId + ',';
            });
            $.ajax({
                "type": 'post',
                'url': "{{route('admin.professor.deleteall')}}",
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
</script>
<script>
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