 <!-- footer-section- -->
     {!! NoCaptcha::renderJs() !!}

            <footer class="footer_none">
                <div class="container">
                    <div class="footer-main">
                        <div class="row">
                            <div class="col-md-4 footer-logo-box">
                                <a href="javascript:;" class="logo-footer"> <img src="{{asset('frontend/images/logo.png')}}"> </a>
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            </div>
                            <div class="col-md-2">
                                <h4 class="footer-tit">{{ __('lang.company') }}</h4>
                                <ul class="footer-link">
                                    <li> <a href="{{route('frontend.aboutUs')}}">{{ __('lang.about_us') }}</a> </li>
                                    <li> <a href="{{route('frontend.contactUs')}}">{{ __('lang.contact_us') }}</a> </li>
                                </ul>
                            </div>
                            <div class="col-md-3 Important links">
                                <h4 class="footer-tit">{{ __('lang.imp_links') }}</h4>
                                <ul class="footer-link">
                                    <li> <a href="{{route('frontend.slug','term-conditions')}}">{{ __('lang.t&c') }}</a> </li>
                                    <li> <a href="{{route('frontend.slug','privacy-policy')}}">{{ __('lang.privacy_policy') }}</a> </li>
                                    <li> <a href="{{route('frontend.faq')}}">{{ __('lang.faq') }}</a> </li>
                                </ul>
                            </div>
                            <div class="col-md-3">
                                <h4 class="footer-tit">{{ __('lang.connect_with_us') }}</h4>
                                <ul class=" footer-link footer-social">
                                    <li class="facebook"><a href="mailto:{{$global_setting->email}}" target="_blank"><i class="fas fa-envelope"></i></a></li>
                                    <li class="instagram"><a href="{{$global_setting->instagram}}" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                    <li class="twitter"><a href="{{$global_setting->twitter}}" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <div class="bottom-footer footer_none">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <p>{{$global_setting->footer}}</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- -footer-section- -->
    </div>
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
    <div id="login-signup-popup" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <!--<h3>Thank you for registration</h3>-->
                    <button type="button" class="close" data-dismiss="modal">
                        <img src="{{asset('frontend/images/close-icon.svg')}}">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="thanks-pop-block">
                        <img width="200" src="{{asset('setting/'.$global_setting->logo)}}">
                        <h4>{{__('Sorry, you need to log in/sign up first.')}}</h4>
                        <ul class="nav-right-menu">
                                <li><a class="btn btn-blue" href="#" onclick="callsigninfunction()">{{ __('lang.login') }}</a></li>
                                <li><a class="btn btn-blue" href="#" onclick="callsignupfunction()">{{ __('lang.signUp') }}</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="login-popup" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"  style="border-bottom: 0px;">
                    <!--<h3>Thank you for registration</h3>-->
                    <button type="button" class="close" data-dismiss="modal">
                        <img src="{{asset('frontend/images/close-icon.svg')}}">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login-pop-block">
                    <div class="headings">
                        <h4>{{ __('lang.welcome')}}!</h4>
                        <p>{{ __('lang.sign_in_message')}}</p>
                    </div>
                        <!-- <img width="200" src="{{asset('setting/'.$global_setting->logo)}}"> -->
                      
                    <form method="POST" class="form-horizontal" action='#' aria-label="{{ __('lang.login') }}" id="userLogin">
                        @csrf
                        <div class="form-group">
                            <input id="nickname" type="text" class="form-control" name="nickname" value="{{ old('nickname') }}" required  autofocus   placeholder="{{ __('lang.nicknameAddress') }}" >
                            @error('nickname')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <span class="popuperrornickname error d-flex"></span>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password" autocomplete="current-password" placeholder="{{ __('lang.password') }}" >
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <span class="popuperrorpassword error d-flex" ></span>

                        </div>
                        <button type="button" class="btn btn-blue w-100 mt-2 subbtn loginpopupsubmit">{{__('lang.login') }}</button>
                        <div class="or-divi">
                            <span>{{__('Sign in With') }}</span>
                        </div>
                        </form>
                        <div class="login-with-ic">
                        <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-primary"><img src="{{asset('frontend/images/fb.png')}}"></a>
                        <a href="{{ url('/auth/redirect/google') }}" class="btn btn-primary"><img src="{{asset('frontend/images/google.png')}}"></a>
                       <!--  <a href="{{ url('/auth/redirect/twitter') }}" class="btn btn-primary"><img src="{{asset('frontend/images/tw.png')}}"></a>
                        <a href="{{url('/auth/redirect/instagram')}}" class="btn btn-primary"><img src="{{asset('frontend/images/insta.png')}}"></a> -->

                            <!-- <button type="submit"><img src="{{asset('frontend/images/apple.png')}}"></button> -->
                        </div>
                        <div class="already-login">
                        <a href="#" onclick="callsignupfunction()"> <p><span style="color:black">{{__('Not Registered Yet').'?' }}</span> {{__('lang.signUp') }}</p></a>
                    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="signup-popup" class="modal fade " role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: 0px;">
                    <button type="button" class="close" data-dismiss="modal">
                        <img src="{{asset('frontend/images/close-icon.svg')}}">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login-pop-block">
                        <!-- <img width="200" src="{{asset('setting/'.$global_setting->logo)}}"> -->
                      
                    <form method="POST" class="form-horizontal" action='#' aria-label="{{ __('lang.signup') }}" id="userRegister">
                        @csrf
                    <div class="headings">
                        <h4>{{__('Create You Account')}}</h4>
                        <p>{{__('Please fill in the details and create your account')}}</p>
                    </div>
                    <div class="login-box-form">
                        <div class="form-group">
                            <input id="email" type="email" placeholder="{{ __('lang.emailAddress') }}" class="form-control " name="email" value="{{ old('email') }}"  autocomplete="email">
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <span class="popuperroremail error d-flex" ></span>

                        </div>
                        <div class="row"> 
                            <div class="col-md-6 genderClass">
                                <div class="form-group">
                                    <select name="gender" class="form-control">
                                        <option selected="" value="" disabled="">{{__('lang.gender')}}</option>
                                        <option {{ old('gender')==1 ? 'selected':'' }} value="1">{{__('lang.male')}}</option>
                                        <option {{ old('gender')==2 ? 'selected':'' }} value="2">{{__('lang.female')}}</option>
                                    </select>

                                    @error('gender')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                            <span class="popuperrorgender error d-flex" ></span>

                                </div>
                            </div>
                            <div class="col-md-6 ageClass">
                                <div class="form-group">
                                    <select id="age" name="age"  class="form-control">
                                        <option selected="" value="" disabled="">{{__('lang.age')}}</option>
                                        <?php
                                        for($i=16; $i<100; $i++){ ?>
                                        <option {{ old('age')== $i ? 'selected':'' }} value="{{$i}}">{{$i}}</option>
                                        <?php } ?>
                                    </select>
                                    @error('age')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                            <span class="popuperrorage error d-flex" ></span>

                                </div>
                            </div>
                        </div>
                    
                        <div class="form-group">
                            <input id="password" type="password" class="form-control " placeholder="{{__('lang.password')}}" name="password"  autocomplete="new-password" id="password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <span class="popuperrorpassword error d-flex" ></span>

                        </div>
                        <div class="form-group">
                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation"  placeholder="{{__('lang.confirm_password')}}" autocomplete="new-password">
                        </div>
                         <div class="form-group{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
                            <div >
                                {!! app('captcha')->display() !!}
                                @if ($errors->has('g-recaptcha-response'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <span class="popuperrorcaptcha error d-flex" ></span>

                        </div>
                        <div class="custom-control custom-checkbox mt-2 mb-3" style="text-align: initial;" required>
                            <input class="custom-control-input" id="registercheckbox" name="registercheckbox"  type="checkbox" ><label class="custom-control-label" for="registercheckbox">{{__('I Accept the')}}</label> <a href="{{route('frontend.slug','term-conditions')}}" target="_blank">{{__('lang.t&c')}}</a>
                            <p class="registercheckbox"></p>
                        </div>

                        <span class="popuperrorregistercheckbox error d-flex" ></span>

                        <button type="button" class="btn btn-blue w-100 mt-2 subbtn signuppopupsubmit">{{__('lang.submit')}}</button>
                        <div class="or-divi">
                            <span>{{__('Or Sign up With')}}</span>
                        </div>
                        <div class="login-with-ic">
                        <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-primary"><img src="{{asset('frontend/images/fb.png')}}"></a>
                        <a href="{{ url('/auth/redirect/google') }}" class="btn btn-primary"><img src="{{asset('frontend/images/google.png')}}"></a>
                       <!--  <a href="{{ url('/auth/redirect/twitter') }}" class="btn btn-primary"><img src="{{asset('frontend/images/tw.png')}}"></a>
                        <a href="{{url('/auth/redirect/instagram')}}" class="btn btn-primary"><img src="{{asset('frontend/images/insta.png')}}"></a> -->
                        </div>
                        <div class="already-login">
                            <p>{{__('When you Go Rate, you will always be anonymous!')}}</p>
                        </div>
                    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
@if(session('registersuccess'))
<script type="text/javascript">
    var gender=  "{{session('gender')==1 ? 'male-color' : 'female-color'}}";
    $('.socialName').addClass(gender);
    $('.socialName').html("{{ session('registersuccess') }}");
    $('#thanks-popup').modal('show');
</script>
@endif
    <script src="{{asset('frontend/js/form-validation.js')}}"></script>
<script>
    function callsocialLogins(type) {
        var previousUrl = "{{url()->current()}}";
        $.ajax({
            'type':'post',
            'url':baseurl+'/popupsocial',
            'data':{
                'previousUrl' : previousUrl
            },
            success:function(response){
        newurl="{{url('/auth/redirect/')}}"+'/'+type; 
        location.href=newurl; 
            }
        });
    }
    $(document).on('click','.loginpopupsubmit',function (e) {
        e.preventDefault();
        var form = $( "#userLogin" );
        if(form.valid()){
            $.ajax({
                'type':'post',
                'url':"{{URL::route('modal_login') }}",
                'data': form.serialize(),
                success:function(response){
                    $('.popuperrornickname').text('');
                    $('.popuperrorpassword').text('');
                    var result= response.status;
                    if(result=='loginerror'){
                        var errors =response.errors;
                        if(errors.nickname){
                            $('.popuperrornickname').text(errors.nickname);
                        }
                        if(errors.password){
                            $('.popuperrorpassword').text(errors.password);
                        }
                    }
                    if(result=='error'){
                        var errors =response.errors;
                        $('.popuperrornickname').text(errors.error);
                    }
                    if(result=='success'){
                        $('#login-popup').modal('hide');
                        var message = "{{__('Login Successful')}}"
                        toastr.success(message);
                        setTimeout(function () {
                            location.reload();
                        }, 2000);
                    }
                }
            });
        }
    });
    $(document).on('click','.signuppopupsubmit',function (e) {
        e.preventDefault();

        var form = $( "#userRegister" );
        if(form.valid()){
            $.ajax({
                'type':'post',
                'url':"{{URL::route('modal_signup') }}",
                'data': form.serialize(),
                success:function(response){
                    $('.popuperrorage').text('');
                    $('.popuperroremail').text('');
                    $('.popuperrorgender').text('');
                    $('.popuperrornickname').text('');
                    $('.popuperrorpassword').text('');
                    $('.popuperrorregistercheckbox').text('');
                    var result= response.status;
                    if(result=='signuperror'){
                        grecaptcha.reset();
                        var errors =response.errors;
                        if(errors.age){
                            $('.popuperrorage').text(errors.age);
                        }
                        if(errors.email){
                            $('.popuperroremail').text(errors.email);
                        }
                        if(errors.gender){
                            $('.popuperrorgender').text(errors.gender);
                        }
                        if(errors.nickname){
                            $('.popuperrornickname').text(errors.nickname);
                        }
                        if(errors.password){
                            $('.popuperrorpassword').text(errors.password);
                        }
                        if(errors.registercheckbox){
                            $('.popuperrorregistercheckbox').text('please select the term & conditions');
                        }
                        if(errors["g-recaptcha-response"]){
                            $('.popuperrorcaptcha').text('please select captcha');
                        }
                    }
                    if(result=='success'){
                        var res= response.data;
                        var gender=  res.gender==1 ? 'male-color' : 'female-color';
                        $('.socialName').addClass(gender);
                        $('.socialName').html(res.systemNickname);
                        $('#signup-popup').modal('hide');
                        $('#thanks-popup').modal('show');
                    }
                }
            });
        }
    });
    $('#thanks-popup').on('hidden.bs.modal', function () {
     location.reload();
    })
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        function callsignupfunction(){
        $('#login-popup').modal('hide');
        $('#login-signup-popup').modal('hide');
        $('#signup-popup').modal('show');

        }
        function callsigninfunction(){
        $('#login-popup').modal('show');
        $('#signup-popup').modal('hide');
        $('#login-signup-popup').modal('hide');

        }
        $(document).ready(function () {
            $(document).click(function (event) {
                var clickover = $(event.target);
                var _opened = $(".navbar-collapse").hasClass("collapse show");
                if (_opened === true && !clickover.hasClass("navbar-toggle")) {
                    $("button.navbar-toggler").click();
                }
            });
            $(document).on('click mouseover','.removebtnmodal',function(event){
                var clickover = $(event.target);
                var _opened = $(".navbar-collapse").hasClass("collapse show");
                if (_opened === true && !clickover.hasClass("navbar-toggle")) {
                    $("button.navbar-toggler").click();
                }

            });
        });
    </script>
</html>
