@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit Setting</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.email.update')}}" id="emailUpdate" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" name="id" value="{{base64_encode($emailData['id'])}}">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title">Title</label>
                                                        <input type="text" class="form-control errorvalidator" id="title" placeholder="First title" value="{{$emailData['title']}}" name="title" required>
                                                        @error('title')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="subject">Subject</label>
                                                        <input type="text" class="form-control errorvalidator" id="subject" placeholder="subject" value="{{$emailData['subject']}}" name="subject" required>
                                                    @error('subject')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="email">Address</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="content"  name="content" required> {{$emailData['content']}}</textarea> 
                                                    @error('content')
                                                    <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="btn btn-primary" type="submit">Update Email Template</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div> <!-- end col -->
        
                            
                        </div> <!-- end row -->
    </div>
</div>
<script>
$(function() {
  $("#emailUpdate").validate({
    rules: {
    subject: {
    required: true,
    maxlength: 50,
    },
    content: {
    required: true,
    },
    },
    messages: {
    subject: {
    required: "Please enter subject",
    },
    content: {
    required: "Please enter content",
    },
    },
    submitHandler: function(form) {
      form.submit();
    },
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
    },
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css({'background': '#ffffff','border-color': 'green'});
    }
  });
});

</script>
@endsection