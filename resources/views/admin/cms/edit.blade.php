@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit CMS</h4>
                                        <p class="card-title-desc">Edit the below details</p>
                                        <form action="{{route('admin.cms.update')}}" id="cmsForm" method="post">
                                            @csrf
                                            <input type="hidden" name="id" value="<?= base64_encode($data->id)?>">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_en">Title (En)</label>
                                                        <input type="text" class="form-control errorvalidator" id="title_en" placeholder="Title In English" value="{{$data->title_en}}" name="title_en" required>
                                                        @error('title_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_ar">Title (Ar)</label>
                                                        <input type="text" class="form-control errorvalidator" id="title_ar" placeholder="Title In Arabic" value="{{$data->title_ar}}" name="title_ar" required>
                                                        @error('title_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Content (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="content_en" placeholder="Content In English" name="content_en" required>{{$data->content_en}}</textarea>
                                                       @error('content_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Content (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="content_ar" placeholder="Content In Arabic" name="content_ar" required>{{$data->content_ar}}</textarea>
                                                        @error('content_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            
                                            <button class="btn btn-primary subbtn" type="submit">Submit</button>
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
  $("#cmsForm").validate({
    rules: {
      title_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      title_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
       maxlength:50,
        },
      content_en:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
      content_ar:{
        normalizer: function(value) {
          return $.trim(value);
        },
       required:true,
       minlength:3,
        },
    },
    messages: {
        name:{
          required:"Please enter your Name",
          minlength:"Please enter atleast 3 character",
        }, 
        password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 8 characters long",
            maxlength: "Your password must not be bigger than 15 characters "
        },
        email: "Please enter a valid email address"
    },
    submitHandler: function(form) {
      $('.subbtn').prop('disabled',true);
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