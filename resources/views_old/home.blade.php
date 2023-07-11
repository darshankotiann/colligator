@extends('layouts.frontend.app')

@section('content')
    @php
        $stitle= 'title_'.$type;
        $sdescription= 'description_'.$type;
        $adescription= 'description_'.$type;
        $ttitle= 'title_'.$type;
        $tdescription= 'description_'.$type;
    @endphp
        @if($global_setting->slider_view==1)
            <section class="banner-home">
                <div class="container">
                    <div class="banner-home-slider owl-carousel owl-theme">
                        <!-- Slider loop -->
                        @foreach($sliders as $slider)
                        <div class="item">
                            <div class="d-flex">
                                <div class="banner-text">
                                    <div class="banner-text-inner">
                                        <h1>{{substr($slider->$stitle,0,$tlimit)}} </h1>
                                        <p>{!!substr($slider->$sdescription,0,$dlimit)!!}</p>
                                        @if($slider->link && $slider->$sdescription)
                                        <a href="{{$slider->link}}" target="_blank" class="btn btn-blue">Learn More</a>
                                        @endif
                                    </div>
                                </div>
                                <div class="banner-img">
                                    <figure class="obj-fit">
                                    <a href="{{$slider->link}}" target="_blank"><img src="{{asset('slider/'.$slider->image)}}"></a>
                                    </figure>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </section>
            @endif
<!-- <span>
                                 <svg viewBox="0 0 29.868 32.391"><g data-name="Group 28682"><g fill="#005bdf" stroke="#005bdf" stroke-width="2" data-name="Group 28705"><path d="M14.089 1.184a.658.658 0 0 0-.931.931l14.02 14.022-14.022 14.02a.658.658 0 1 0 .915.947l.016-.016 14.487-14.487a.659.659 0 0 0 0-.931Z" data-name="Path 19308"/><path d="M16.723 15.671 2.236 1.184a.658.658 0 0 0-.931.931l14.02 14.022L1.304 30.158a.658.658 0 0 0 .915.947l.016-.016 14.487-14.487a.658.658 0 0 0 .001-.931Z" data-name="Path 19309"/></g></g></svg> 
                        
                        </span> -->
            <section class="combo-btns section-padd">
                <div class="container"> 
                    <article>
                      <ul> 
                        @if($global_setting->professor_rating==1)
                         <li  class="btn-blue-new">   
                          <a href="{{route('frontend.country','professor')}}">{{__('Find/Rate/Add Professor')}}</a>
                         </li>
                        @endif
                        @if($global_setting->teacher_rating==1)
                        <li class="btn-blue-new">  
                         <a href="{{route('frontend.country','teacher')}}">{{__('Find/Rate/Add High School Teacher')}}</a>
                        </li> 
                        @endif
                        @if($global_setting->university_rating==1)
                        <li class="btn-blue-new">  
                         <a href="{{route('frontend.country','university')}}">{{__('Find/Rate University')}}</a>
                        </li>
                        @endif
                      </ul>
                       




                    </article>
                </div>
            </section>
            @if($global_setting->about_us_view==1)

            <section class="about-home section-padd">
                <img src="{{asset('frontend/images/shape-blue.png')}}" class="shape-about1">
                <img src="{{asset('frontend/images/shape-green.png')}}" class="shape-about2">
                <div class="container">
                    <div class="headings"> <h4>{{__('lang.about_us')}}</h4></div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="about-banner-row">
                                <div class="banner-about-first">
                                    <figure><img src="{{asset('/images/'.$aboutUs->slider_image)}}"></figure>
                                </div>
                                <div class="banner-about-last">
                                    <figure><img src="{{asset('/images/'.$aboutUs->slider_image)}}" width="100%"></figure>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 d-flex">
                            <article>
                                <p>{!!substr($aboutUs->$adescription,0,$dlimit)!!}</p>
                                <span class="btn-blue-new mt-4"> 
                                 <a href="{{route('frontend.aboutUs')}}">{{__('lang.read_more')}}</a>
                               </span> 
                            </article>
                        </div>
                    </div>
                </div>
            </section>
            @endif
            @if($global_setting->news_view==1)

            <section class="blog-home section-padd">
                <div class="container">
                    <div class="headings">
                        <h4>{{__('lang.latest_news')}}</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    </div>
                    <div class="blog-home-slider owl-carousel owl-theme">
                        <!-- testimonial loop -->
                        @foreach($testimonials as $testimonial)
                        <div class="item">
                            <div class="blog-box">
                                <figure class="obj-fit">
                                    @if($testimonial->image)
                                        @if(file_exists(public_path() . '/testimonial/' . $testimonial->image)) 
                                            <img src="{{asset('testimonial/'.$testimonial->image)}}">
                                        @else
                                            <img src="{{asset('images/logo-jpg.jpg')}}">
                                        @endif
                                    @else
                                    <img src="{{asset('images/logo-jpg.jpg')}}">

                                    @endif
                                </figure>
                                <figcaption>
                                    <div class="date-tag d-flex">
                                        <span>{{__('lang.latest_news')}}</span> <font>{{$testimonial->date_created}}</font>
                                    </div>
                                    <h4><a href="javascript:;">{{substr($testimonial->$ttitle,0,$tlimit)}}</a></h4>
                                    <p>{!!substr($testimonial->$tdescription,0,$dlimit)!!}</p>
                                </figcaption>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>

            
            </section>
            @endif
            <div id="thanks-popup" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <!--<h3>Thank you for registration</h3>-->
                            <button type="button" class="close" data-dismiss="modal">
                            <i class="fa fa-times" aria-hidden="true" style="color:#007bff; font-weight: 900; font-size:17px;"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="thanks-pop-block">
                                <img src="{{asset('frontend/images/tick-mark(4).svg')}}">
                                <h4>Thank you for registration.</h4>
                                <p>You will appear as “<span class="socialName"></span>” </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<style>
.socialName{
    font-weight: 900;
    font-family: 'Aktiv-Bold';
}
</style>
@if(session('success'))
<script type="text/javascript">
  toastr.success("{{ session('success') }}");
</script>
@endif

@if(session('registersuccess'))
<script type="text/javascript">
    var gender=  "{{session('gender')==1 ? 'male-color' : 'female-color'}}";
    $('.socialName').addClass(gender);
    $('.socialName').html("{{ session('registersuccess') }}");
    $('#thanks-popup').modal('show');

    
</script>
@endif
<script>
$('.btn-blue').on('click',function(e){
   
    $(this).addClass('activeBtn');
});
    </script>
@endsection