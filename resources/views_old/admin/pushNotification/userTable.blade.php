<table id="pushNotificationTable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>IP</th>
                                <th>University</th>
                                <th>Nickname</th>
                                <th>System Nickname</th>
                                <th>Gender</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Send Notification</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($users as $ukey => $svalue) { 
                                    ?>
                                    <tr>
                                        <td><?= base64_encode($svalue['id']) ?></td>
                                        <td><?= $svalue['name'] ?></td>
                                        <td><?= $svalue['email'] ?></td>
                                        <td><?= $svalue['ip'] ?></td>
                                        <td><?= $svalue['university'] ?></td>
                                        <td><?= $svalue['nickname'] ?></td>
                                        <td><?= $svalue['systemNickname'] ?></td>
                                        <td><?= $svalue['gender']==1 ? 'Male':'Female' ?></td>
                                        <td><?= $svalue['created_at'] ?></td>
                                        <td><div class="badge <?= $svalue['status']==0 ?  'badge-soft-danger' : 'badge-soft-success' ?>   font-size-12  "><?= $svalue['status'] == 0 ? 'Deactive' : 'Active' ?></div></td>
                                        <td>
                                            <button class="mr-3 btn text-primary" onclick="openNotification('<?=base64_encode($svalue['id'])?>')" data-toggle="modal" data-target="#staticBackdrop"  data-placement="top" title="Send Notification" data-original-title="Edit"><i class="fa fa-envelope   font-size-18"></i> </button>
                                            {{--<a href="{{route('admin.sendPushNotification.send',base64_encode($svalue['id']))}}" class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="Send NOtification" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>--}}                
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="11"><button type="button" class="btn btn-success merabtn">Send Notification </button></th>
                                </tr>
                            </tfoot>
                        </table>
                        <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                            <p>Enter your Title and Message to send Push Nostification to User Device.</p>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="{{route('admin.sendPushNotification.send')}}" method="post">
                                        @csrf
                                        <input type="hidden" name="ids" class="pushIds" value="">                                
                                        <div class="modal-body">
                                            <div class="mb-2">
                                                <label>Title</label>
                                                <input type="text" name="title" placeholder="Enter Title" class="form-control">
                                            </div>
                                            <div class="mb-2">
                                                <label>Message</label>
                                                <textarea class="form-control" name="message" placeholder="Enter Your Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light">Send</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

    <script type="text/javascript">
    function openNotification($id) {
        $('.pushIds').val($id);
    }
    $(document).ready(function(){

        var pushNotificationTable= $('#pushNotificationTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4,5,6,7,8,9, "asc" ]],
         "columnDefs": [
            { responsivePriority: 1, targets: 10 },
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
                var rows_selected = pushNotificationTable.column(0).checkboxes.selected();
                var allids='';
                $.each(rows_selected, function(index, rowId){
                    allids+=rowId +',';
                });
            $('.pushIds').val(allids);
            if(allids !=''){
                $('#staticBackdrop').modal('show');
            }else{
                alert('Select at least one user');
            }

               
        });
  });
    </script>