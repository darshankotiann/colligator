@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title ">CMS List</h4>
                        <table id="" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                            <tr>
                                <th>Title (En)</th>
                                <th>Title (Ar)</th>
                                 <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php 
                                if(!empty($cmslist)){
                                    foreach ($cmslist as $lkey => $lvalue) {
                                 ?>
                                    
                                    <tr>
                                        <td><?= $lvalue['title_en'] ?></td>
                                        <td><?= $lvalue['title_ar'] ?></td>
                                        <td>
                                        @if(auth()->guard('admin')->user()->role == 2 && !empty($permissions) && $permissions['edit']==1)
                                            <a href="{{route('admin.cms.edit',base64_encode($lvalue['id']))}}"  class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                                        @endif
                                        @if(auth()->guard('admin')->user()->role == 1 )
                                            <a href="{{route('admin.cms.edit',base64_encode($lvalue['id']))}}"  class="mr-3 text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-size-18"></i></a>
                                        @endif
                                        </td>
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