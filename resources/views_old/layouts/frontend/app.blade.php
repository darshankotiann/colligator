<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Collegator') }}</title>
    <meta name="viewport" content="minimum-scale=1.0, maximum-scale=1.0,width=device-width, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <!--responsive-meta-end-->
    <script>
        var baseurl= "<?= url('/') ?>";
        var segment= "<?=  Request::segment('1') ?>";
        var imagePath= "<?=  asset('') ?>";
        var nodeip= "https://collegator.devtechnosys.info:17281";
    </script>

    @include('inc.frontend.login.header_styles')
    @toastr_css
    @toastr_js
<style>
    .toast-middle-center{top:50%;right:0%; left:41.5%;width:50%}
    </style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.1.3/socket.io.js" integrity="sha512-PU5S6BA03fRv1Q5fpwXjg5nlRrgdoguZ74urFInkbABMCENyx5oP3hrDzYMMPh3qdLdknIvrGj3yqZ4JuU7Nag==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
    var sessionlang= "<?= session()->get('locale')=='ar' ? 'ar' : 'en';  ?>";
    var langfunction= "<?= session()->get('locale')=='ar' ? 'arabic()' : 'english()';  ?>";
    @auth
    var socket = io.connect(nodeip, {
      query: {
        auth: '{{auth()->user()->id}}',
      },
    });
    socket.on('connect', function() {
    console.log('Got announcement:');
    });
    socket.on('newMessage', data => {
      this.changeHeaderMessageList();
    });
    @endauth
</script>
<body  class="<?= session()->get('locale')=='ar' ? 'rtl' : 'ltr'; ?>">
    <div class="wraper">
        <!-- Header in -->
        @include('inc.frontend.login.header')
        
        <div class="site-wraper">
            @yield('content')
        </div>
    @toastr_render
        @include('inc.frontend.login.footer')
@auth

<script type="text/javascript">


    changeHeaderMessageList();

    function changeHeaderMessageList() {
        $.ajax({
        'type': "post",
        'url':nodeip+'/update-chatMessageList',
        'data': {
            userId: "{{auth()->user()->id}}",
        },
        success: function(data) {
            htmldata='';
            count=0;
            if(data && data.length >0){
            htmldata+='<ul>';
            $.each(data, function(k, v) {
                mcountStyle= v.mcount > 0 ? 'newChat' : '';
                userName= v.name != null ?  v.name : v.userNickname;
                hrefData= baseurl+"/chat/"+v.recId;
                firsthrefData= baseurl+"/chat/"+v.recId;
                htmldata+='<li class="'+mcountStyle+'"><a href="'+hrefData+'" class="dropdown-notification-item"><div class="dropdown-notification-icon "><figure class="obj-fit"><img src="'+imagePath+'profile/colleicon.png"></figure></div> <div class="dropdown-notification-item-info"><div class="notification-item-message">'+userName;
                if(v.mcount>0){
                count++;
                htmldata+='<span class="badge badge-secondary">'+v.mcount+'</span>';
                }

                htmldata+='</div><div class="notification-item-time">';
                if(v.mcount>0){
                    htmldata+='Now';
                }
                htmldata+='</div></div> </a></li>';
            });
            $('.countmessages').text(count>0 ? count : '');
            htmldata+='</ul><a href="'+firsthrefData+'" class="dropdown-view-all-btn">View all Message</a>';
            
            $('.dropdown-notification-blk-chat').html(htmldata);
            }
        }
    });  
    }
</script>
@endauth