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
        var baseurl = "<?= url('/') ?>";
        var segment = "<?= Request::segment('1') ?>";
        var imagePath = "<?= asset('') ?>";
        // var nodeip= "https://collegator.com:17281";
        var nodeip = "http://127.0.0.1:17281";
    </script>

    @include('inc.frontend.login.header_styles')
    @toastr_css
    @toastr_js
    <style>
        .toast-middle-center {
            top: 50%;
            right: 0%;
            left: 41.5%;
            width: 50%
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.1.3/socket.io.js"
        integrity="sha512-PU5S6BA03fRv1Q5fpwXjg5nlRrgdoguZ74urFInkbABMCENyx5oP3hrDzYMMPh3qdLdknIvrGj3yqZ4JuU7Nag=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        var sessionlang = "<?= session()->get('locale') == 'ar' ? 'ar' : 'en' ?>";
        var langfunction = "<?= session()->get('locale') == 'ar' ? 'arabic()' : 'english()' ?>";
        @auth
        // var socket = io.connect(nodeip, {
        //     query: {
        //         auth: '{{ auth()->user()->id }}',
        //     },
        // });
        // socket.on('connect', function() {
        //     console.log('Got announcement:');
        // });
        // socket.on('newMessage', data => {
        //     this.changeHeaderMessageList();
        // });
        @endauth
    </script>
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-Y6FLFZPCBW"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-Y6FLFZPCBW');
    </script>
    <!-- Meta Pixel Code -->
    <script>
        ! function(f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function() {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '612445930838866');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=612445930838866&ev=PageView&noscript=1" /></noscript>
    <!-- End Meta Pixel Code -->
</head>

<body class="<?= session()->get('locale') == 'ar' ? 'rtl' : 'ltr' ?>">
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
                // changeHeaderMessageList();

                function changeHeaderMessageList() {
                    $.ajax({
                        'type': "post",
                        'url': nodeip + '/update-chatMessageList',
                        'data': {
                            userId: "{{ auth()->user()->id }}",
                        },
                        success: function(data) {
                            htmldata = '';
                            count = 0;
                            if (data && data.length > 0) {
                                htmldata += '<ul>';
                                $.each(data, function(k, v) {
                                    mcountStyle = v.mcount > 0 ? 'newChat' : '';
                                    userName = v.name != null ? v.name : v.userNickname;
                                    hrefData = baseurl + "/chat/" + v.recId;
                                    firsthrefData = baseurl + "/chat/" + v.recId;
                                    htmldata += '<li class="' + mcountStyle + '"><a href="' + hrefData +
                                        '" class="dropdown-notification-item"><div class="dropdown-notification-icon "><figure class="obj-fit"><img src="' +
                                        imagePath +
                                        'profile/colleicon.png"></figure></div> <div class="dropdown-notification-item-info"><div class="notification-item-message">' +
                                        userName;
                                    if (v.mcount > 0) {
                                        count++;
                                        htmldata += '<span class="badge badge-secondary">' + v.mcount +
                                            '</span>';
                                    }

                                    htmldata += '</div><div class="notification-item-time">';
                                    if (v.mcount > 0) {
                                        htmldata += 'Now';
                                    }
                                    htmldata += '</div></div> </a></li>';
                                });
                                $('.countmessages').text(count > 0 ? count : '');
                                htmldata += '</ul><a href="' + firsthrefData +
                                    '" class="dropdown-view-all-btn">View all Message</a>';

                                $('.dropdown-notification-blk-chat').html(htmldata);
                            }
                        }
                    });
                }
            </script>

        @endauth
