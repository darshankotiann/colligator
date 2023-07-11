@extends('layouts.frontend.app')
@section('content')
    @php
        $universityType = 'text_' . $type;
    @endphp

    <style>
        .form-group.btn-block .submit-button {
    background: transparent1;
}
    </style>

    <section class="search-professor section-padd">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-md-5">
                    @if ($global_setting->university_school == 1)
                        @if (!empty($banners) && $banners->status == 1)
                            <!-- <a href="{{ $banners->link ?? '#' }}">

                                <?php
                                $universityBanner = $banners->image ? 'banner/' . $banners->image : 'frontend/images/search-prof-bg1.png'; ?>
                                <div class="search-professor-banner"
                                    style="background-image: url({{ asset($universityBanner) }});">
                                    <div class="search-professor-banner-content">
                                        <p><?= $banners->$universityType ? $banners->$universityType : '' ?></p>
                                    </div>
                                </div>
                            </a> -->
                            <img src="{{ asset($universityBanner) }}" width="100%">
                        @else
                            <img src="https://www.collegator.com/banner/map.webp" width="100%" class="staticBanner">
                        @endif
                    @endif
                </div>
                <div class="col-md-8">
                    <div class="professor-search icon">
                        <h3 class="mb-4">{{ $countryName->name }}</h3>
                        <form action="{{ route('frontend.show_university') }}" method="get"
                            id="professorteachersearchform">
                            <!--                         <input type="text" id="searchprofessorteacher" name="ptname" class="form-control" placeholder="{{ __('Search/Write University Name') }}"> -->
                            <!-- <input type="hidden" id="searchprofessorteacherId" name="id"> -->
                            <select class="select2 form-control" id="searchprofessorteacher" name="ptname">
                                <option></option>
                                @foreach ($universities as $result)
                                    <option value="{{ base64_encode($result->id) }}">{{ $result->name }}</option>
                                @endforeach
                            </select>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- //modal -->
        @if ($banners == null)
            <div class="no-professor-info">
                <div class="no-professor-info-icon">
                    <img src="{{ asset('frontend/images/search-animate-icon.png') }}">
                </div>
                <div class="no-professor-info-txt">{{ __('Didn’t see the University banner you’re looking for?') }} </div>
                <a href="javascript:void(0);" onclick="callbtnajaxuniversity('university','<?= $countryName->iso2 ?>')"
                    class="btn btn-blue">{{ __('Add University Banner') }}</a>
                <!-- <span><img src="{{ asset('frontend/images/arrow.png') }}"></span> -->
            </div>

            <div id="add_university" class="modal fade" role="dialog">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3>Add banner</h3>
                            <button type="button" class="close" data-dismiss="modal">
                                <img src="{{ asset('frontend/images/close-icon.svg') }}">
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body">
                                <div class="add_university_banner">
                                    <form action="{{ route('frontend.add_userdefine_university') }}" method="post"
                                        id="universitybanner" enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-group">
                                            <input type="hidden" name="langtype" id="langtype" value="">
                                            <input type="hidden" name="modalname" id="modalname" value="school">
                                            <input type="hidden" name="type" id="type" value="add">

                                            <select class="form-control" id="country_code" name="country_code">
                                                <option value="{{ $countryName->iso2 }}">{{ $countryName->name }}
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" id="type" name="type">
                                                <option {{ old('type') == 2 ? 'selected' : '' }} value="2">University
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control errorvalidator col-12" id="text_en"
                                                placeholder="English text" value="{{ old('text_en') }}" name="text_en">
                                            @error('text_en')
                                                <span class="error form-errors mb-0">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control errorvalidator col-12" id="text_ar"
                                                placeholder="Arabic text" value="{{ old('text_ar') }}" name="text_ar">
                                            @error('text_ar')
                                                <span class="error form-errors mb-0">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="file" name="image" id="image"
                                                        onchange="PreviewImage()" class="form-control col-11" accept="image/jpeg, image/png, image/gif, .jpeg, .png, .gif">
                                                    @error('image')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror

                                                </div>
                                                <img src="" id="userImage" width="100">
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" name="link" placeholder="banner link"
                                                        value="{{ old('link') }}" class="form-control">
                                                    @error('link')
                                                        <span class="error form-errors mb-0">{{ $message }}</span>
                                                    @enderror

                                                </div>
                                            </div>

                                        </div>
                                        <div class="form-group btn-block">
                                            <button type="submit"
                                                class="btn submit-button subbtn">{{ __('lang.submit') }}</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        <!-- //modal End-->
    </section>


    <script type="text/javascript">
        $(document).ready(function() {

            //     $( "#searchprofessorteacher" ).autocomplete({

            //         source: function(request, response) {
            //             $.ajax({
            //             url: "{{ url('autosearch-university-school') }}",
            //             method:'get',
            //             data: {
            //                     search : request.term
            //              },
            //             dataType: "json",
            //             success: function(data){
            //                response(data);
            //             }
            //         });
            //     },
            //     minLength: 3
            //  });
            // });
            //  $('#searchprofessorteacher').on('autocompleteselect', function (e, ui) {
            //      $('#searchprofessorteacher').val(ui.item.value);
            //      $('#searchprofessorteacherId').val(ui.item.desc);
            //      $('#professorteachersearchform').submit();
            //     });

            $('.select2').select2({
                placeholder: "{{ __('Search/Write University Name') }}",
                allowClear: true,
                // minimumInputLength: 3 // only start searching when the user has input 3 or more characters
            });
            $('#searchprofessorteacher').change(function() {
                $('#professorteachersearchform').submit();

            });

        });
    </script>
    <script>
        if ($("#universitybanner").length > 0) {
            $("#universitybanner").validate({
                rules: {
                    text_en: {
                        required: true,
                    },
                    text_ar: {
                        required: true,
                    },
                    image: {
                        required: true,
                        accept: "image/jpg,image/jpeg,image/png,image/gif",
                    },
                    link: {
                        required: true,
                    }
                    
                },
                submitHandler: function(form) {
                    $('.subbtn').prop('disabled', true);
                    form.submit();
                },
            })

        }
    </script>
    <script>
        window.addEventListener("pageshow", function(event) {
            var historyTraversal = event.persisted ||
                (typeof window.performance != "undefined" &&
                    window.performance.navigation.type === 2);
            if (historyTraversal) {
                // Handle page restore.
                window.location.reload();
            }
});
    </script>
@endsection
