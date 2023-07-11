<header class="inner-header">
            <div class="header-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="{{route('home')}}"><img src="{{asset('setting/'.$global_setting->logo)}}"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item"> <a class="nav-link" href="#">{{ __('lang.home') }}</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="{{route('frontend.aboutUs')}}"">{{ __('lang.about_us') }}</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="{{route('frontend.contactUs')}}">{{ __('lang.contact_us') }}</a> </li>
                            </ul>
                        </div>
                        <div class="nav-right">
                            <ul class="nav-right-menu">
                                <li><a class="btn btn-blue" href="{{route('login')}}">{{ __('lang.logout') }}</a></li>
                            </ul>
                             <?php if (session()->has('locale')) { ?>
                            <a href="{{route('lang',session()->get('locale'))}}" class="lang-btn">{{session()->get('locale')=='en' ? 'عربى' : 'English'}} <span></span></a>
                            <?php }else{ ?>
                            <a href="{{route('lang','en')}}" class="lang-btn">عربى <span></span></a>
                            <?php } ?>
                        </div>
                    </nav>
                </div>
            </div>
        </header>