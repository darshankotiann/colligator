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
                                                
                                        <h4 class="card-title">Edit Comment</h4>
                                        <p class="card-title-desc">Edit the below details</p>
                                            </div>
                                            <div class="col-md-1">
                                                <a href="{{route('admin.comments_track')}}" class="btn btn-primary subbtn mt-2 text-right rounded" type="submit">Back</a>
                                                
                                            </div>
                                        </div>
                                        <form action="{{route('admin.commentsTrack.update')}}" id="" method="post" enctype="multipart/form-data">
                                            @csrf
                                           
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Message</label>
                                                        <input type="text" class="form-control errorvalidator" id="message" placeholder="Message" name= "message"  value="{{$data->message??''}}"required>
                                                        <input type="hidden" name="type"  value="{{$type}}">
                                                       <input type="hidden"  id="id" name="id" value="{{base64_encode($data->id??0)}}">
                                                        @error('message')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                         
                                            <button class="btn btn-primary subbtn mt-2" type="submit">Submit</button>
                                        </form>
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