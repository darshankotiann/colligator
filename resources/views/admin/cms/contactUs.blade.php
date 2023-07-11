@extends('layouts.app')

@section('content')

<div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit Contact Us </h4>
                                        <p class="card-title-desc">Edit the below details</p>
                                        <form action="{{route('admin.cms.edit_contactUs')}}" id="contactUsForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" name="id" value="<?= base64_encode($contactUs->id)?>">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_en">Slider Title (En)</label>
                                                        <input type="text" class="form-control errorvalidator" id="slider_title_en" placeholder="Slider Title In English" value="{{$contactUs->slider_title_en}}" name="slider_title_en" required>
                                                        @error('slider_title_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="title_en">Slider Title (Ar)</label>
                                                        <input type="text" class="form-control errorvalidator" id="slider_title_ar" placeholder="Slider Title In Arabic" value="{{$contactUs->slider_title_ar}}" name="slider_title_ar" required>
                                                        @error('slider_title_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Slider Description (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="slider_description_en" placeholder="Slider Description In English" name="slider_description_en">{{$contactUs->slider_description_en}}</textarea>
                                                       @error('slider_description_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="slider_description_ar">Slider Description (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="slider_description_ar" placeholder="Slider Description In Arabic" name="slider_description_ar">{{$contactUs->slider_description_ar}}</textarea>
                                                        @error('slider_description_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="content_en">Slider image</label>
                                                        <input type="file" id="image" onchange="PreviewImage()" name="slider_image" class="form-control">
                                                       @error('slider_image')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                <img src="{{asset('images/'.$contactUs->slider_image)}}" id="userImage" width="100">


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
@endsection