@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            
                            <div class="col-md-11">
                                
                        <h4 class="card-title">View Professor Suggestion</h4>
                        <p class="card-title-desc">View the below details</p>
                            </div>
                            <div class="col-md-1">
                                <a href="{{route('admin.profile_corrections.teacherList')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Professor Name</label>
                                        <input type="text" readonly name="" class="form-control" value="{{$suggestions['professor']['name']}}">
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="university">Suggestion By</label>
                                        <input type="text" readonly name="" class="form-control" disabled value="{{$suggestions['user'] ? $suggestions['user']['systemNickname']  : '-'}}">
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Suggestion</label>
                                        <textarea class="form-control" disabled>{{$suggestions['suggestion']}}</textarea>
                                    </div>
                                </div>
                                
                            </div>
                    </div>
                </div>
                <!-- end card -->
            </div> <!-- end col -->

            
        </div> <!-- end row -->
    </div>
</div>

@endsection