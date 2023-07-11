<table id="userReportTableNew" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
    <thead>
        <tr>
            <th>System Nickname</th>
            <th>Count</th>
            <th>Email</th>
            <th>IP</th>
            <!-- <th>University</th> -->
            <th>Country</th>
            <th>Gender</th>
            <th>Created At</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($users as $ukey => $svalue) {
        ?>
            <tr>
                <td><?= $svalue['systemNickname'] ?></td>

                <td><?= $svalue['professor_review_count'] ?? $svalue['professor_comment_count'] ?></td>
                <td><?= $svalue['email'] ?></td>
                <td><?= $svalue['ip'] ?></td>
                <td><?= $svalue['countryName'] ?></td>

                <td><?= $svalue['gender'] == 1 ? 'Male' : 'Female' ?></td>
                <td><?= $svalue['created_at'] ?></td>
                <td>
                    <div class="badge <?= $svalue['status'] == 0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div>
                </td>
                <td>
                    <?php
                    if (Auth::guard('admin')->user()->role == 2) {

                        if (!empty($permissions) && $permissions['edit'] == 1) { ?>

                            <a href="{{route('admin.user.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                        <?php }
                    } else { ?>
                        <a href="{{route('admin.user.edit',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                    <?php }
                    ?>
                    <a href="{{route('admin.user.status',base64_encode($svalue['id']))}}" class="<?= $svalue['status'] == 1 ? 'text-danger ' : 'text-success ' ?> mr-3" onclick="return confirm('Are You Sure You want to '+'<?= $svalue['status'] == 1 ? 'Deactivate ' : 'Activate ' ?>'+'this user')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?= $svalue['status'] == 1 ? 'Deactivate' : 'Activate' ?>"><i class="mdi mdi-account-lock font-size-18"></i></a>
                    <?php
                    if (Auth::guard('admin')->user()->role == 2) {
                        if (!empty($permissions) && $permissions['delete'] == 1) { ?>
                            <a href="{{route('admin.user.delete',base64_encode($svalue['id']))}}" class="text-danger" onclick="return confirm('Are You Sure You want to delete it')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                        <?php }
                    } else { ?>
                        <a href="{{route('admin.user.delete',base64_encode($svalue['id']))}}" class="text-danger" onclick="return confirm('Are You Sure You want to delete it')" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-trash-can font-size-18"></i></a>
                    <?php }
                    ?>


                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>


<script>
    $('#userReportTableNew').DataTable({
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
        "paging": false,
        // "aaSorting": [[ 0,1,3,4,5,6,7,8,9, "asc" ]],
        "columnDefs": [{
                responsivePriority: 1,
                targets: 8
            },
            {
                "bSortable": false,
                "aTargets": [8, 2]
            },


        ],

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
        "order": [],
        "aaSorting": []
    });
</script>