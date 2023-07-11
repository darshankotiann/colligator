@extends('layouts.frontend.app')
@section('content')
  <section class="search-professor section-padd">
                <div class="container"> 
                    <div class="row justify-content-center mb-5">
                        <div class="col-md-6">
                            @if($searchtype=='teacher')
                            
                            <?php 
                            $teacherProfessorBanner= $banners->banners['teacher']? 'banner/'.$banners->banners['teacher'] : 'frontend/images/search-prof-bg1.png' ?>
                            @else
                            <?php 
                            $teacherProfessorBanner= $banners->banners['professor']? 'banner/'.$banners->banners['professor'] : 'frontend/images/search-prof-bg1.png' ?>                            
                            @endif
                            <div class="search-professor-banner" style="background-image: url({{asset($teacherProfessorBanner)}});">
                                <div class="search-professor-banner-content">
                                    <h3>Lorem Ipsum</h3>
                                    <p>Is Dummy Text</p>
                                </div>
                            </div>
                            <div class="search-combo-btns">
                                <article>
                                    @if($searchtype=='teacher')
                                    <a href="{{route('frontend.search_find_rate_professor_teacher','teacher')}}" class="btn btn-blue">{{__('Find/Rate Teacher')}} <span><img src="{{asset('frontend/images/arrow.png')}}"></span></a>
                                    <a href="javascript:void(0);" onclick="callbtnajax('teacher')"  class="btn btn-blue">{{__('Add Teacher')}}<span><img src="{{asset('frontend/images/arrow.png')}}"></span></a>
                                    @else
                                    <a href="{{route('frontend.search_find_rate_professor_teacher','professor')}}" class="btn btn-blue">{{__('Find/Rate Professor')}} <span><img src="{{asset('frontend/images/arrow.png')}}"></span></a>
                                    <a href="javascript:void(0);" onclick="callbtnajax('professor')" class="btn btn-blue">{{__('Add Professor')}}<span><img src="{{asset('frontend/images/arrow.png')}}"></span></a>
                                    @endif
                                    @if($errors->any())
    <script type="text/javascript">
     toastr.error("{{ implode('', $errors->all(':message')) }}");
        
    </script>
@endif
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modalopen"></div>
            </section>
            <script type="text/javascript">
               
            </script>
@endsection