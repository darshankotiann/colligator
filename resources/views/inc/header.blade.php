  <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex w-100">
                        <!-- LOGO -->
                        <div class="navbar-brand-box" style="    padding: 0px 15px;">
                            <a href="index-2.html" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="{{asset('images/admin/images/logo-sm-dark.png')}}" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="{{asset('images/admin/images/logo-dark.png')}}" alt="" height="20">
                                </span>
                            </a>

                            <a href="{{route('admin.home')}}" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="{{asset('setting/'.$global_setting->favicon)}}" alt="" height="30">
                                </span>
                                <span class="logo-lg" style="display: flex;align-items: center;justify-content: center;">
                                    <img src="{{asset('setting/'.$global_setting->logo)}}" alt="" style="height:100%; width: 70%;">
                                </span>
                            </a>
                        </div>
                        <div class="nav-new d-flex w-100">
                            <button type="button" class="btn btn-sm px-3 font-size-24 header-item waves-effect" id="vertical-menu-btn">
                                <i class="ri-menu-2-line align-middle"></i>
                            </button>

                            <div class="dropdown d-inline-block user-dropdown ml-auto">
                                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    @if(Auth::guard('admin')->user())
                                    <img class="rounded-circle header-profile-user" src="{{asset('public/profile/'.Auth::guard('admin')->user()->image)}}"alt="Header Avatar">
                                    <span class="d-none d-xl-inline-block ml-1">{{Auth::guard('admin')->user()->name}}</span>
                                    @else
                                    <img class="rounded-circle header-profile-user" src="{{asset('images/admin/images/users/avatar-2.jpg')}}"alt="Header Avatar">
                                    <span class="d-none d-xl-inline-block ml-1">Kevin</span>
                                    @endif
                                    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a class="dropdown-item" href="{{route('admin.profile')}}"><i class="ri-user-line align-middle mr-1"></i> Profile</a>
                                    <a class="dropdown-item" href="{{route('admin.change_password')}}"><i class="ri-lock-unlock-line align-middle mr-1"></i>Change Password</a>
                                    <!--                                 <a class="dropdown-item" href="#"><i class="ri-wallet-2-line align-middle mr-1"></i> My Wallet</a>
                                    <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right mt-1">11</span><i class="ri-settings-2-line align-middle mr-1"></i> Settings</a>
                                    <a class="dropdown-item" href="#"><i class="ri-lock-unlock-line align-middle mr-1"></i> Lock screen</a> -->
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item text-danger" href="#" onclick="if(confirm('Are you sure ?')){event.preventDefault();document.querySelector('#logout-form').submit()} " >
                                    <i class="ri-shut-down-line align-middle mr-1 text-danger"></i>Logout
                                    </a>
                                    @if(Auth::guard('admin')->check())
                                    <form id="logout-form"  action="{{ route('admin.logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                    @elseif(Auth::guard('subAdmin')->check())
                                    <form id="logout-form" action="{{ route('sub_admin.logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                    @else
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                    @endif
                                </div>
                            </div>
                        </div>

                        {{--<div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                                <i class="ri-settings-2-line"></i>
                            </button>
                        </div>--}}
            
                    </div>
                </div>
            </header>
            <style type="text/css">
            
        </style>