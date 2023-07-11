@extends('layouts.app')
@section('content')
 <div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Edit College</h4>
                        <p class="card-title-desc">Edit the below details</p>
                        <form action="{{route('admin.abuse-words.update',base64_encode($word->id))}}" id="abuseForm" method="post" enctype="multipart/form-data">
                            @csrf
                            {{ method_field('PATCH') }}
                            <div class="row">

                               <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Word</label>
                                        <input type="text" name="word" placeholder="abuse word" class="form-control" value="{{$word->word}}">
                                        @error('word')
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

@endsection