@extends('layouts.frontend.app')
@section('content')
  <div class="login-wrap">
    <div class="login-box">
        <div class="headings">
            <h4>Change Password</h4>
        </div>
        <div class="login-box-form">
            <form id="resetPassword" action="{{route('frontend.update_password')}}" method="post">
                @csrf
            <div class="form-group">
                <label>Old Password</label>
                <input type="password" name="oldpassword" placeholder="Enter Old Password" class="form-control">
                @error('old-password')
                    <span class="text-danger error passwordError" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                  @enderror
            </div>
            <div class="form-group">
                <label>New Password</label>
                <div class="fa-eye-sec">
                    <input type="password" name="password" placeholder="Enter New Password" id="password" class="form-control">
                    <span class="password-showhide">
                    <span class="show-password"><i class="fa fa-eye" ></i></span>
                    <span class="hide-password"  style="display: none;"><i class="fa fa-eye-slash"></i></span>
                    </span>
                </div>
                @error('password')
                    <span class="text-danger error passwordError" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                  @enderror
            </div>
            <div class="form-group">
                <label>Confirm New Password</label>
                <div class="fa-eye-sec">
                    <input type="password" name="password_confirmation" id="confirm-password" placeholder="Enter Confirm New Password" class="form-control">
                    <span class="password-showhide">
                    <span class="show-password"><i class="fa fa-eye" ></i></span>
                    <span class="hide-password" style="display: none;"><i class="fa fa-eye-slash"></i></span>
                    </span>
                </div>
            </div>
            <button class="btn btn-blue w-100 mt-2">Submit</button>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
     $(document).ready(function() {

        $(".show-password, .hide-password").on('click', function() {
          var passwordId = $(this).parents('div:first').find('input').attr('id');
          if ($(this).hasClass('show-password')) {
            $("#" + passwordId).attr("type", "text");
            $(this).parent().find(".show-password").hide();
            $(this).parent().find(".hide-password").show();
          } else {
            $("#" + passwordId).attr("type", "password");
            $(this).parent().find(".hide-password").hide();
            $(this).parent().find(".show-password").show();
          }
        });
      });
</script>
@endsection