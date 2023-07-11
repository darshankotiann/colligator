@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title ">Customer Contact List</h4>
                        <table id="" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th width="20%">Name</th>
                                <th width="20%">Email</th>
                                 <th width="25%">Subject</th>
                                 <th width="25%">Message</th>
                                 <th width="10%">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($customerContactList)){
                                    foreach ($customerContactList as $lkey => $lvalue) {
                                 ?>
                                    <tr>
                                        <td><?= $lvalue->name ?></td>
                                        <td><a href="mailto:<?= $lvalue->email ?>" target="_blank"><?= $lvalue->email ?></a></td>
                                        <td><?= $lvalue->subject ?></td>
                                        <td><?= $lvalue->message ?></td>
                                        <td><a href="{{route('admin.customer_contact_delete',base64_encode($lvalue->id))}}">Delete</a></td>
                                    </tr>
                                <?php  }} ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
@endsection