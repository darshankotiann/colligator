@extends('layouts.frontend.app')
@section('content')
<div class="site-wraper">
            <div class="login-wrap">
                <div class="login-box signup-box">
                    <div class="headings">
                        <h4>Rate This Professor</h4>
                         <!-- <p style="margin-top: 5Px">Let Virtue Ethics Guide Your Rating!</p> -->
                    </div>
                    <form action="{{route('frontend.add_rate_professor')}}" class="ratingform" method="post">
                        @csrf
                        <input type="hidden" name="professor_id" value="{{$professorData['id']}}">
                     <div class="login-box-form">
                        <div class="form-group">
                            <label>Course Code</label>
                            <input type="text" name="course_code" value="{{old('course_code')}}" placeholder="Enter course code" class="form-control">
                            @error('course_code')
                            {{$message}}
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Select Class Type</label>
                            <select class="form-control" name="study_type">
                                <option value="" selected="" disabled="">Select Class Type</option>
                                <option {{old('study_type')==1 ? 'selected':''}} value="1">Online</option>
                                <option {{old('study_type')==2 ? 'selected':''}} value="2">Regular</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Rate Professor</label>
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
                                    <?php $rate_professor =  (old('rate_professor')?? 0 )*10 ?>

                                    <span class="slide" style="width: <?=$rate_professor ?>% "></span>
                                    <input class="range-slide" id="rate_professor" name="rate_professor" onchange="changeRateRange(this.value)" type="range" min="0" value="{{old('rate_professor')?? 0}}" max="10" >
                                </div>
                                <!-- <span class="range-data-01 slidercolor"></span> -->
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Level Of Easiness</label>
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
                                    <?php $easyness_range =  (old('easyness_range')?? 0 )*10 ?>
                                    <span class="slide" style="width: <?=$easyness_range ?>% "></span>
                                    <input class="range-slide" id="easyness_range" name="easyness_range" type="range" onchange="changeEasyRange(this.value)" min="0" value="{{old('easyness_range')?? 0}}" max="10" >
                                </div>
                                <!-- <span class="range-data-01 slidercolor"></span> -->
                            </div>
                        </div>
                        
                        <div class="form-group form-group-list">
                            <label>Would you take this professor again?</label>
                            <ul>
                                <li>
                                    <div class="custom-control custom-radio mt-2 mb-3">
                                        <input class="custom-control-input" name="repeat" id="professoryes"  type="radio" {{old('repeat')=='1' ? 'checked' : ''}} value="1">
                                        <label class="custom-control-label"  for="professoryes">Yes</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="custom-control custom-radio mt-2 mb-3">
                                        <input class="custom-control-input" {{old('repeat')=='2' ? 'checked' : ''}} name="repeat" id="professorno" type="radio" value="2">
                                        <label class="custom-control-label" for="professorno">No</label>
                                    </div>
                                </li>
                                <p class="repeatError error"></p>
                            </ul>
                        </div>

                        <div class="form-group form-group-list">
                            <label>Textbook use</label>
                            <ul>
                                <li>
                                    <div class="custom-control custom-radio mt-2 mb-3">
                                        <input class="custom-control-input" name="textbook" id="textbookyes" {{old('textbook')=='1' ? 'checked' : ''}}  type="radio" value="1">
                                        <label class="custom-control-label" for="textbookyes">Yes</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="custom-control custom-radio mt-2 mb-3">
                                        <input class="custom-control-input" name="textbook" id="textbookno" {{old('textbook')=='2' ? 'checked' : ''}} type="radio" value="2">
                                        <label class="custom-control-label" for="textbookno">No</label>
                                    </div>
                                </li>
                                <p class="textbookError error"></p>
                            </ul>
                        </div>

                        <div class="form-group">
                            <label>Attendance</label>
                            <select  name="attendance" class="form-control">
                                <option selected="" disabled="">Select Attendance Type</option>
                                <option  {{old('attendance')==1 ? 'selected':''}}  value="1">Mandatory</option>
                                <option {{old('attendance')==2 ? 'selected':''}} value="2">Not Mandatory</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Grade Received</label>
                            <select class="form-control" name="grade">
                                <!--<option {{old('grade')==1 ? 'selected':''}} value="1">A++</option> -->
                                <option {{old('grade')==3 ? 'selected':''}} value="3">A</option>
                                <option {{old('grade')==5 ? 'selected':''}} value="5">B</option>
                                <option {{old('grade')==6 ? 'selected':''}} value="6">C</option>
                                <option {{old('grade')==7 ? 'selected':''}} value="7">D</option>
                                <!-- <option {{old('grade')==8 ? 'selected':''}} value="8">E</option> -->
                                <option {{old('grade')==9 ? 'selected':''}} value="9">F</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Here is your chance to be more specific (Optional)</label>
                            <textarea onfocusout="hidecounter(this)" onblur="textReplyCounter(this,this.form.counter,200);" onkeyup="textReplyCounter(this,this.form.counter,200);"  name="message" placeholder="200 Characters maximum" class="form-control" rows="1" cols="15" >{{old('message')}}</textarea>
                            <input onblur="textReplyCounter(this.form.recipients,this,200);" disabled  onfocus="this.blur();"  maxlength="3" size="3" value="200 characters maximum" name="counter" class="counterReplyinput">
                            @error('message')
                                <span class="error">{{$message}} </span>
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
function callRateFunction(num){
    var slideWidth = num * 100 / 10;
    $('#rate_professor').closest('.rSlider-block').find('.slide').css("width", slideWidth + "%");
    $('#rate_professor').val(num);
    changeRateRange(num);
}
function callEasyFunction(num){
    var slideWidth = num * 100 / 10;
    $('#easyness_range').closest('.rSlider-block').find('.slide').css("width", slideWidth + "%");
    $('#easyness_range').val(num);
    changeEasyRange(num);
}

    </script>
@endsection 
