<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<style type="text/css">
      .tox-notifications-container {display: none !important;}

</style>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <script>
            var baseurl= "<?= url('/') ?>";
            var segment= "<?=  Request::segment('1') ?>";
        </script>
        <?php $baseurl = Request::segment('1') ?>
        <title>{{ config('app.name', 'Collegator') }}</title>
            @include('inc.header_nav')
             @toastr_css
             <style>
    .toast-middle-center{top:40%;right:0%; left:41.5%;width:50%}
    </style>
    <!-- Meta Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '612445930838866');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=612445930838866&ev=PageView&noscript=1"
/></noscript>
<!-- End Meta Pixel Code -->
    </head>
    <body data-sidebar="dark" data-keep-enlarged="true" class="">
        <div id="layout-wrapper">
                @include('inc.header')
            @include('inc.sidebar')
            <div class="main-content">
                @yield('content')
            </div>
        </div>
        <div class="rightbar-overlay"></div>
            @include('inc.footer')
            @toastr_js
            @toastr_render           
    </body>
</html>
