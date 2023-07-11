 <!-- footer-section- -->
            <footer>
                <div class="container">
                    <div class="footer-main">
                        <div class="row">
                            <div class="col-md-4 footer-logo-box">
                                <a href="javascript:;" class="logo-footer"> <img src="images/logo.png"> </a>
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                            </div>
                            <div class="col-md-2">
                                <h4 class="footer-tit">Company</h4>
                                <ul class="footer-link">
                                    <li> <a href="javascript:;">About Us</a> </li>
                                    <li> <a href="javascript:;">Contact Us</a> </li>
                                </ul>
                            </div>
                            <div class="col-md-3 Important links">
                                <h4 class="footer-tit">Important links</h4>
                                <ul class="footer-link">
                                    <li> <a href="javascript:;">Terms & Conditions</a> </li>
                                    <li> <a href="javascript:;">Privacy Policy</a> </li>
                                    <li> <a href="javascript:;">FAQ</a> </li>
                                </ul>
                            </div>
                            <div class="col-md-3">
                                <h4 class="footer-tit">Connect with us</h4>
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
            <div class="bottom-footer">
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
</body>
<script type="text/javascript" src="{{asset('frontend/js/mdb.min.js')}}"></script>
<script type="text/javascript" src="{{asset('frontend/js/owl.carousel.min.js')}}"></script>

    @toastr_js
    @toastr_render
</html>
