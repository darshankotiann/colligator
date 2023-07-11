@extends('layouts.app')

@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Edit Faq</h4>
                                        <p class="card-title-desc">fill the below details</p>
                                        <form action="{{route('admin.faq.update',base64_encode($data->id))}}" id="testimonialForm" method="post" enctype="multipart/form-data">
                                            @csrf
                                            {{ method_field('PATCH') }}
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Question (En)</label>
                                                        <input type="text" class="form-control errorvalidator" id="question_en" placeholder="Question in English" value="{{$data->question_en}}" name="question_en" required>
                                                        @error('question_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Question (Ar)</label>
                                                        <input type="text" class="form-control errorvalidator" id="question_ar" placeholder="Question in Arabic" value="{{$data->question_ar}}" name="question_ar" required>
                                                        @error('question_ar')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Description (En)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="description_en" placeholder="Description in English" name="description_en" required>{{$data->description_en}}</textarea>
                                                        <span class="error" id="description_en_error"></span>
                                                       @error('description_en')
                                                            <span class="error form-errors mb-0">{{ $message }}</span>
                                                        @enderror
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="name">Description (Ar)</label>
                                                        <textarea class="form-control errorvalidator tinymce-editor" id="description_ar" placeholder="Description in Arabic" name="description_ar" required>{{$data->description_ar}}</textarea>
                                                        <span class="error" id="description_ar_error"></span>
                                                       @error('description_ar')
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

</script>

@endsection