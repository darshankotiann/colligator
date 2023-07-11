@extends('layouts.loginapp')

@section('content')
<div class="row justify-content-center">
    <div class="col-lg-9">
        <div>
            <div class="text-center">
                <div>
                    <a href="{{route('admin.login')}}" class="logo"><img src="{{asset('images/logo-png.png')}}" height="100" alt="logo"></a>
                </div>

                <h4 class="font-size-18 mt-4">{{ __('Reset Password') }}</h4>
                <p class="text-muted"></p>
            </div>

            <div class="p-2 mt-5">
                    <form method="POST" id="resetPassword" action="{{ route('admin.password.update') }}">
                        @csrf

                        <input type="hidden" name="token" value="{{ $token }}">
                        <input type="hidden" name="type" value="2">

                    <div class="auth-form-group-custom">
                        <i class="ri-user-2-line auti-custom-input-icon"></i>
                        <label for="email">{{ __('E-Mail Address') }}</label>
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>
                    </div>
                            @error('email')
                    <p class="text-danger">{{ $message }}</p>
                            @enderror
                    <p class="emailError"></p>
                    <div class="auth-form-group-custom">
                        <i class="ri-lock-2-line auti-custom-input-icon"></i>
                        <label for="password">{{ __('Password') }}</label>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" autofocus>
                    </div>
                        @error('password')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    <p class="passwordError"></p>

                    <div class="auth-form-group-custom">
                        <i class="ri-lock-2-line auti-custom-input-icon"></i>
                        <label for="password-confirm">{{ __('Confirm Password') }}</label>
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation"  autocomplete="new-password" autofocus>
                    </div>
                    <p class="confirmpasswordError"></p>


                    <div class="mt-4 text-center">
                        <button class="btn btn-primary w-md waves-effect waves-light submitbtn" type="submit">{{ __('Reset Password') }}</button>
                    </div>
                    </form>
                 </div>

            <div class="mt-5 text-center">
                <p>Have an account ? <a href="{{route('admin.login')}}" class="font-weight-medium text-primary"> Login</a> </p>
                <p>{{$global_setting->footer}}</p>
            </div>
        </div>

    </div>
</div>
 <script type="text/javascript">
                if ($("#resetPassword").length > 0) {
                    $("#resetPassword").validate({
                         errorPlacement: function(error, element) {
                    if (element.attr("name") == "email" ){
                        error.appendTo('.emailError');
                      }
                    else if (element.attr("name") == "password" ){
                        error.appendTo('.passwordError');
                      }
                        else {
                    error.appendTo('.confirmpasswordError');
                  }
                },
                    rules: {
                    email: {
                    required: true,
                    email:true,
                    validate_email: true,
                    },
                    password: {
                    required: true,
                    minlength:8,
                    regexPassword:true,
                    },
                    password_confirmation: {
                    required: true,
                    equalTo : "#password"
                    },
                    },
                    messages: {
                    email: {
                    required: "Please enter email ",
                    },
                    password: {
                    required: "Please enter password",
                    },
                    },
                    submitHandler: function(form) {
                      $('.submitbtn').prop('disabled',true);
                      form.submit();
                    },
                    // Called when the element is invalid:
                    highlight: function(element) {
                        $(element).css({'background':'rgba(253, 238, 238, 0.61)','border-color':'red'});
                    },
                    // Called when the element is valid:
                    unhighlight: function(element) {
                        $(element).css({'background': '#ffffff','border-color': 'green'});
                    }
                          })
                    } 

            </script>
@endsection
