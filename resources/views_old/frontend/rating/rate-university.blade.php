@extends('layouts.frontend.app')
@section('content')
<div class="site-wraper">
            <div class="login-wrap">
                <div class="login-box signup-box">
                    <div class="headings">
                        <h4>Rate University</h4>
                         <!-- <p style="margin-top: 5Px">Let Virtue Ethics Guide Your Rating!</p> -->
                    </div>
                    <form action="{{route('frontend.add_rate_university')}}" class="universityRatings" method="post">
                        @csrf
                        <input type="hidden" name="id" value="{{$universityData['id']}}">
                    <div class="login-box-form">
                        
                        <div class="form-group">
                            <label>What Is The Overall Quality Of Professors/Lecturers?</label>
                           <div class="emoji-range-slider">
                           <div class="emoji-range-item">
                                    <img src="{{asset('frontend/images/emoji1.svg')}}" onclick="callRateFunction(1)" class="nocolor1 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji1.svg')}}" onclick="callRateFunction(1)" class="fillcolor1 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                    <img src="{{asset('frontend/images/emoji2.svg')}}" onclick="callRateFunction(2)" class="nocolor2 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji2.svg')}}" onclick="callRateFunction(2)" class="fillcolor2 noShowImage" >

                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji3.svg')}}" onclick="callRateFunction(3)" class="nocolor3 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji3.svg')}}" onclick="callRateFunction(3)" class="fillcolor3 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji4.svg')}}" onclick="callRateFunction(4)" class="nocolor4 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji4.svg')}}" onclick="callRateFunction(4)" class="fillcolor4 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji5.svg')}}" onclick="callRateFunction(5)" class="nocolor5 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji5.svg')}}" onclick="callRateFunction(5)" class="fillcolor5 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji6.svg')}}" onclick="callRateFunction(6)" class="nocolor6 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji6.svg')}}" onclick="callRateFunction(6)" class="fillcolor6 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji7.svg')}}" onclick="callRateFunction(7)" class="nocolor7 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji7.svg')}}" onclick="callRateFunction(7)" class="fillcolor7 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji8.svg')}}" onclick="callRateFunction(8)" class="nocolor8 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji8.svg')}}" onclick="callRateFunction(8)" class="fillcolor8 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji9.svg')}}" onclick="callRateFunction(9)" class="nocolor9 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji9.svg')}}" onclick="callRateFunction(9)" class="fillcolor9 noShowImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji10.svg')}}" onclick="callRateFunction(10)" class="nocolor10 ShowImage">
                                    <img src="{{asset('frontend/images/coloremoji10.svg')}}" onclick="callRateFunction(10)" class="fillcolor10 noShowImage" >
                                </div>
                            </div>
                            <div class="rSlider-block">
                                <div class="rSlider">
                                    <span class="slide" style="width: {{old('professor_range')}}0%"></span>
                                    <input class="range-slide" id="professor_range" name="professor_range" type="range"  onchange="changeRateRange(this.value)" min="0" value="{{old('professor_range')?? 0}}" max="10" >
                                </div>
                                <!-- <span class="range-data-01 slidercolor"  ></span> -->
                            </div>
                        </div>

                        <div class="form-group">
                            <label>What Is The Overall Quality Of Courses?</label>
                            <div class="emoji-range-slider">
                            <div class="emoji-range-item">
                                    <img src="{{asset('frontend/images/emoji1.svg')}}" onclick="callEasyFunction(1)" class="noEasyColor1 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji1.svg')}}" onclick="callEasyFunction(1)" class="fillEasycolor1 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                    <img src="{{asset('frontend/images/emoji2.svg')}}" onclick="callEasyFunction(2)" class="noEasyColor2 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji2.svg')}}" onclick="callEasyFunction(2)" class="fillEasycolor2 noShowEasyImage" >

                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji3.svg')}}" onclick="callEasyFunction(3)" class="noEasyColor3 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji3.svg')}}" onclick="callEasyFunction(3)" class="fillEasycolor3 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji4.svg')}}" onclick="callEasyFunction(4)" class="noEasyColor4 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji4.svg')}}" onclick="callEasyFunction(4)" class="fillEasycolor4 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji5.svg')}}" onclick="callEasyFunction(5)" class="noEasyColor5 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji5.svg')}}" onclick="callEasyFunction(5)" class="fillEasycolor5 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji6.svg')}}" onclick="callEasyFunction(6)" class="noEasyColor6 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji6.svg')}}" onclick="callEasyFunction(6)" class="fillEasycolor6 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji7.svg')}}" onclick="callEasyFunction(7)" class="noEasyColor7 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji7.svg')}}" onclick="callEasyFunction(7)" class="fillEasycolor7 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji8.svg')}}" onclick="callEasyFunction(8)" class="noEasyColor8 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji8.svg')}}" onclick="callEasyFunction(8)" class="fillEasycolor8 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji9.svg')}}" onclick="callEasyFunction(9)" class="noEasyColor9 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji9.svg')}}" onclick="callEasyFunction(9)" class="fillEasycolor9 noShowEasyImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji10.svg')}}" onclick="callEasyFunction(10)" class="noEasyColor10 ShowEasyImage">
                                    <img src="{{asset('frontend/images/coloremoji10.svg')}}" onclick="callEasyFunction(10)" class="fillEasycolor10 noShowEasyImage" >
                                </div>
                            </div>
                            <div class="rSlider-block">
                                <div class="rSlider">
                                    <span class="slide" style="width: {{old('course_range')}}0%"></span>
                                    <input class="range-slide" id="course_range" name="course_range" type="range" min="0" onchange="changeEasyRange(this.value)"  value="{{old('course_range')?? 0}}" max="10" >
                                </div>
                                <!-- <span class="range-data-01 slidercolor"></span> -->
                            </div>
                        </div>

                        <div class="form-group">
                            <label>How Good Are The Buildings/Facilities?</label>
                            <div class="emoji-range-slider">
                            <div class="emoji-range-item">
                                    <img src="{{asset('frontend/images/emoji1.svg')}}" onclick="callHomeFunction(1)" class="noHomeColor1 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji1.svg')}}" onclick="callHomeFunction(1)" class="fillHomecolor1 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                    <img src="{{asset('frontend/images/emoji2.svg')}}" onclick="callHomeFunction(2)" class="noHomeColor2 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji2.svg')}}" onclick="callHomeFunction(2)" class="fillHomecolor2 noShowHomeImage" >

                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji3.svg')}}" onclick="callHomeFunction(3)" class="noHomeColor3 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji3.svg')}}" onclick="callHomeFunction(3)" class="fillHomecolor3 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji4.svg')}}" onclick="callHomeFunction(4)" class="noHomeColor4 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji4.svg')}}" onclick="callHomeFunction(4)" class="fillHomecolor4 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji5.svg')}}" onclick="callHomeFunction(5)" class="noHomeColor5 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji5.svg')}}" onclick="callHomeFunction(5)" class="fillHomecolor5 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji6.svg')}}" onclick="callHomeFunction(6)" class="noHomeColor6 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji6.svg')}}" onclick="callHomeFunction(6)" class="fillHomecolor6 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji7.svg')}}" onclick="callHomeFunction(7)" class="noHomeColor7 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji7.svg')}}" onclick="callHomeFunction(7)" class="fillHomecolor7 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji8.svg')}}" onclick="callHomeFunction(8)" class="noHomeColor8 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji8.svg')}}" onclick="callHomeFunction(8)" class="fillHomecolor8 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji9.svg')}}" onclick="callHomeFunction(9)" class="noHomeColor9 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji9.svg')}}" onclick="callHomeFunction(9)" class="fillHomecolor9 noShowHomeImage" >
                                </div>
                                <div class="emoji-range-item">
                                <img src="{{asset('frontend/images/emoji10.svg')}}" onclick="callHomeFunction(10)" class="noHomeColor10 ShowHomeImage">
                                    <img src="{{asset('frontend/images/coloremoji10.svg')}}" onclick="callHomeFunction(10)" class="fillHomecolor10 noShowHomeImage" >
                                </div>
                            </div>
                            <div class="rSlider-block">
                                <div class="rSlider">
                                    <span class="slide" style="width: {{old('facility_range')}}0%"></span>
                                    <input class="range-slide" id="facility_range" name="facility_range" type="range" min="0"  onchange="changeHomeRange(this.value)" value="{{old('facility_range')?? 0}}" max="10" >
                                </div>
                                <!-- <span class="range-data-01 slidercolor"></span> -->
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Here is your chance to be more specific (optional)</label>
                            <textarea onfocusout="hidecounter(this)" onblur="textReplyCounter(this,this.form.counter,200);" onkeyup="textReplyCounter(this,this.form.counter,200);"  name="message" placeholder="200 Characters maximum" class="form-control" rows="1" cols="15" >{{old('message')}}</textarea>
                            <input onblur="textReplyCounter(this.form.recipients,this,200);" disabled  onfocus="this.blur();"  maxlength="3" size="3" value="200 characters maximum" name="counter" class="counterReplyinput">
                        @error('message')
                        <p class="error">{{$message}}</p>
                        @enderror
                        </div>
                        <button class="btn btn-blue w-100 mt-2 subbtn">Submit</button>
                    </div>
                </form>
                </div>
            </div>
        </div>
        <style>
    .noShowImage{
        display: none;
    }
    .noShowEasyImage{
        display:none;
    }
    .noShowHomeImage{
        display:none;
    }
    </style>
<script>
function changeRateRange(vale){
// console.log(this);
    $('.noShowImage').css('display','none');
    $('.ShowImage').css('display','block');
    for($i=1;$i<=vale; $i++){
        $('.nocolor'+$i).css('display','none');
        $('.fillcolor'+$i).css('display','block');
    }
}
function changeEasyRange(vale){
// console.log(this);
    $('.noShowEasyImage').css('display','none');
    $('.ShowEasyImage').css('display','block');
    for($i=1;$i<=vale; $i++){
        $('.noEasyColor'+$i).css('display','none');
        $('.fillEasycolor'+$i).css('display','block');
    }
}
function changeHomeRange(vale){
// console.log(this);
    $('.noShowHomeImage').css('display','none');
    $('.ShowHomeImage').css('display','block');
    for($i=1;$i<=vale; $i++){
        $('.noHomeColor'+$i).css('display','none');
        $('.fillHomecolor'+$i).css('display','block');
    }
}

function callRateFunction(num){
    var slideWidth = num * 100 / 10;
    $('#professor_range').closest('.rSlider-block').find('.slide').css("width", slideWidth + "%");
    $('#professor_range').val(num);
    changeRateRange(num);
}
function callEasyFunction(num){
    var slideWidth = num * 100 / 10;
    $('#course_range').closest('.rSlider-block').find('.slide').css("width", slideWidth + "%");
    $('#course_range').val(num);
    changeEasyRange(num);
}
function callHomeFunction(num){
    var slideWidth = num * 100 / 10;
    $('#facility_range').closest('.rSlider-block').find('.slide').css("width", slideWidth + "%");
    $('#facility_range').val(num);
    changeHomeRange(num);
}

    </script>
@endsection 