@extends('layouts.frontend.app')
@section('content')
<div class="login-wrap">
    <div class="login-box">
        <div class="headings">
            <h4>{{__('lang.my_profile')}}</h4>
        </div>
        <div class="login-box-form">
            <form id="updateMyProfile" action="{{route('frontend.update_my_profile')}}" method="post" enctype="multipart/form-data" style="position: relative;">
                @csrf
                    <!-- <button type="button" class="removeImgBtn" onclick="removeImage()"><i class="fa fa-times" aria-hidden="true"></i></button> -->
            <!-- <div class="user_profile_image_img">
                <div class="user-profile">
                    <figure>
                        <?php
                            // $userImage =auth()->user()->profile; 
                            // if (filter_var($userImage, FILTER_VALIDATE_URL)==false) {
                            //     $userImage = asset('profile/'.auth()->guard('web')->user()->profile);
                            // } 
                            // <img data-enlargeable id="userImage"  style="cursor: zoom-in" src="{{$userImage}}" />

?>
                        <input type="hidden" name="profileImage" id="profileImage">
                    </figure>
                    <button type="button"><input onchange="PreviewImage()" id="image" type="file" name="profile"></button>
                </div>
            </div>
                <span class="profileError"></span> -->
            
                {{--<div class="form-group">
                <label>{{__('lang.name')}}</label>
                <input type="text" name="name" disabled placeholder="{{__('Enter Your Name')}}"  value="{{auth()->guard('web')->user()->name}}" class="form-control">
            </div>--}}
            {{--<div class="form-group">
                <label>{{__('lang.nickname')}}</label>
                <input type="text" name="" disabled placeholder="Enter Your Nick Name" value="{{auth()->guard('web')->user()->nickname}}" class="form-control">
            </div>--}}
            <div class="form-group">
                <label>{{__('lang.anonymous_nickname')}}</label>
                <?php $genderColor=  auth()->guard('web')->user()->gender==1 ? 'male-color' :'female-color' ?>
                <input type="text" name="" disabled placeholder="Enter Anonymous Nickname" value="{{auth()->guard('web')->user()->systemNickname}}" class="form-control {{$genderColor}} ">
            </div>
            <p style="font-size:12px; font-weight: bolder;">Your identity will always be hidden!</p>
            <div class="form-group">
                <label>{{__('lang.emailAddress')}}</label>
                <input type="text" name="" disabled placeholder="Enter Email Address" value="{{auth()->guard('web')->user()->email}}" class="form-control disabledEmail">
            </div>
            <!-- <button class="btn btn-blue w-100 mt-2 subbtn" type="submit">{{__('lang.update')}}</button> -->
            </form>
        </div>
    </div>
</div>
<style type="text/css">
    .removeImgBtn{
    position: absolute;
    left: 55%;
    z-index: 1;
    background: #3758d9;
    color: white;
    padding: 1px 4px 0px 4px;
    border-radius: 25%;
    border: 1px solid white;
    }
</style>
<script type="text/javascript">
    $('img[data-enlargeable]').addClass('img-enlargeable').click(function() {
  var src = $(this).attr('src');
  var modal;

  function removeModal() {
    modal.remove();
    $('body').off('keyup.modal-close');
  }
  modal = $('<div>').css({
    background: 'RGBA(0,0,0,.5) url(' + src + ') no-repeat center',
    backgroundSize: 'contain',
    width: '100%',
    height: '100%',
    position: 'fixed',
    zIndex: '10000',
    top: '0',
    left: '0',
    cursor: 'zoom-out'
  }).click(function() {
    removeModal();
  }).appendTo('body');
  //handling ESC
  $('body').on('keyup.modal-close', function(e) {
    if (e.key === 'Escape') {
      removeModal();
    }
  });
});
    function removeImage() {
        document.getElementById("userImage").src = baseurl+"/profile/colleicon.png" ;
        document.getElementById("profileImage").value= baseurl+"/profile/colleicon.png"  ;
    }
</script>
@endsection