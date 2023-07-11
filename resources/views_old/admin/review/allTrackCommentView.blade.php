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
                                                
                                        <h4 class="card-title">View Comment</h4>
                                        <p class="card-title-desc">View the below details</p>
                                            </div>
                                            <div class="col-md-1">
                                                <a href="{{route('admin.comments_track')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                            </div>
                                        </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Message</label>
                                                        <input type="text" class="form-control errorvalidator" id="message" placeholder="Message" readonly name= "message"  value="{{$data->message ?? '' }}"required>
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
<script>


</script>
@endsection