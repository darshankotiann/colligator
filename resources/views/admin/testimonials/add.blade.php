@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Add testimonial</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.testimonial.store')}}" id="testimonialForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Title (En)</label>
                                                        <input type="text" class="form-control errorvalidator" id="title_en" placeholder="Title in English" value="{{old('title_en')}}" name="title_en" >
                                                        @error('title_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Title (Ar)</label>
                                                        <input type="text" class="form-control errorvalidator" id="title_ar" placeholder="Title in Arabic" value="{{old('title_ar')}}" name="title_ar" >
                                                        @error('title_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Description (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="description_en" placeholder="Description in English" name="description_en" >{{old('description_en')}}</textarea>
                                                        <span class="error" id="description_en_error"></span>
                                                       @error('description_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Description (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="description_ar" placeholder="Description in Arabic" name="description_ar">{{old('description_ar')}}</textarea>
                                                        <span class="error" id="description_ar_error"></span>
                                                       @error('description_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Image</label>
                                                        <input type="file" name="image" id="image1" onchange="PreviewImage(1)" class="form-control">
                                                       @error('image')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                    <img src="" id="userImage1" width="100">
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

</script>

@endsection