<header class="inner-header">
            <div class="header-nav">
                <div class="container">

                    <nav class="navbar-blk navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="{{route('frontend.home')}}">
                        {{--@if(\Request::route()->getName() != 'login')
                        <img src="{{asset('setting/'.$global_setting->logo)}}">
                        @else
                        <span>Home</span>
                        @endif --}} 
                        <img src="{{asset('setting/'.$global_setting->logo)}}">

                    </a>
                        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                @auth('web')
                                @else
                                <li class="nav-item"> <a class="nav-link" href="{{route('goLogin')}}">{{ __('lang.login') }}/{{ __('lang.signUp') }}</a> </li>
                                @endauth
                                <li class="nav-item"> <a class="nav-link" href="{{route('frontend.home')}}">{{ __('lang.home') }}</a> </li>
                                @auth
                                <li class="nav-item "> <a class="nav-link" href="{{route('frontend.my_profile')}}">{{__('My Profile')}}</a> </li>
                                <li class="nav-item "> <a class="nav-link" href="{{route('frontend.change_password')}}">{{__('Change Password')}}</a> </li>
                                @endauth
                                <li class="nav-item"> <a class="nav-link" href="{{route('frontend.aboutUs')}}">{{ __('lang.about_us') }}</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="{{route('frontend.contactUs')}}">{{ __('lang.contact_us') }}</a> </li>
                                @auth
                                <li  class="nav-item ">
                                    @php
                                        $message= session()->get('locale')=='ar' ? 'هل أنت متأكد أنك تريد تسجيل الخروج؟' : 'Are you sure you want to log out?';
                                    @endphp
                                    
                                        <li class=""><a class="nav-link" href="#"
                                        onclick="if(confirm('{{$message}}')) {event.preventDefault();document.querySelector('#logout-form').submit()} ">
                                        {{ __('lang.logout') }}
                                    </a></li>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </li>
                                @endauth
                                <li class="nav-item switchapp"> <a class="nav-link" href="collegator:://">Switch to app</a> </li>
                            
                            </ul>
                        </div>
                        @auth
                        <div class="nav-right after-login">
                            <ul class="nav-right-menu">
                                @if($global_setting->private_message==1)
                                <li class="btn-blue-new">
                                    @if(isset($globalconversation[0]))
                                    <a href="{{route('frontend.chat.list',$globalconversation[0]['userId'])}}" class="mobile-view-msg"> 
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26.633" height="19.975" viewBox="0 0 26.633 19.975">
                                                <g id="envelope" transform="translate(0 -64)">
                                                  <g id="Group_27074" data-name="Group 27074" transform="translate(0 64)">
                                                    <g id="Group_27073" data-name="Group 27073" transform="translate(0 0)">
                                                      <path id="Path_19090" data-name="Path 19090" d="M7.11,65.621c3.655,3.1,10.069,8.542,11.954,10.24a1.114,1.114,0,0,0,1.611,0c1.887-1.7,8.3-7.146,11.956-10.242a.554.554,0,0,0,.078-.766A2.2,2.2,0,0,0,30.968,64H8.773a2.2,2.2,0,0,0-1.742.855A.554.554,0,0,0,7.11,65.621Z" transform="translate(-6.554 -64)" fill="#fff"/>
                                                      <path id="Path_19091" data-name="Path 19091" d="M26.311,126.463a.552.552,0,0,0-.592.08c-4.054,3.436-9.227,7.841-10.855,9.308a2.247,2.247,0,0,1-3.1,0c-1.735-1.563-7.545-6.5-10.854-9.307a.555.555,0,0,0-.914.423v13.954a2.222,2.222,0,0,0,2.219,2.219H24.414a2.222,2.222,0,0,0,2.219-2.219V126.967A.555.555,0,0,0,26.311,126.463Z" transform="translate(0 -123.165)" fill="#fff"/>
                                                    </g>
                                                  </g>
                                                </g>
                                            </svg>
                                            
                                        </a> 
                                        @else
                                        <a href="{{route('frontend.no_chat')}}" class="mobile-view-msg"> 
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26.633" height="19.975" viewBox="0 0 26.633 19.975">
                                                <g id="envelope" transform="translate(0 -64)">
                                                  <g id="Group_27074" data-name="Group 27074" transform="translate(0 64)">
                                                    <g id="Group_27073" data-name="Group 27073" transform="translate(0 0)">
                                                      <path id="Path_19090" data-name="Path 19090" d="M7.11,65.621c3.655,3.1,10.069,8.542,11.954,10.24a1.114,1.114,0,0,0,1.611,0c1.887-1.7,8.3-7.146,11.956-10.242a.554.554,0,0,0,.078-.766A2.2,2.2,0,0,0,30.968,64H8.773a2.2,2.2,0,0,0-1.742.855A.554.554,0,0,0,7.11,65.621Z" transform="translate(-6.554 -64)" fill="#fff"/>
                                                      <path id="Path_19091" data-name="Path 19091" d="M26.311,126.463a.552.552,0,0,0-.592.08c-4.054,3.436-9.227,7.841-10.855,9.308a2.247,2.247,0,0,1-3.1,0c-1.735-1.563-7.545-6.5-10.854-9.307a.555.555,0,0,0-.914.423v13.954a2.222,2.222,0,0,0,2.219,2.219H24.414a2.222,2.222,0,0,0,2.219-2.219V126.967A.555.555,0,0,0,26.311,126.463Z" transform="translate(0 -123.165)" fill="#fff"/>
                                                    </g>
                                                  </g>
                                                </g>
                                            </svg>
                                            
                                        </a>      
                                        @endif                               
                                    <div class="dropdown removebtnmodal">
                                        <button class="dropbtn info-dropdown">
                                        @if($countNewMessage>0)
                                        <span class="info-dropdown-item countmessages">{{$countNewMessage}}</span>
                                        @endif    
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26.633" height="19.975" viewBox="0 0 26.633 19.975">
                                                <g id="envelope" transform="translate(0 -64)">
                                                  <g id="Group_27074" data-name="Group 27074" transform="translate(0 64)">
                                                    <g id="Group_27073" data-name="Group 27073" transform="translate(0 0)">
                                                      <path id="Path_19090" data-name="Path 19090" d="M7.11,65.621c3.655,3.1,10.069,8.542,11.954,10.24a1.114,1.114,0,0,0,1.611,0c1.887-1.7,8.3-7.146,11.956-10.242a.554.554,0,0,0,.078-.766A2.2,2.2,0,0,0,30.968,64H8.773a2.2,2.2,0,0,0-1.742.855A.554.554,0,0,0,7.11,65.621Z" transform="translate(-6.554 -64)" fill="#fff"/>
                                                      <path id="Path_19091" data-name="Path 19091" d="M26.311,126.463a.552.552,0,0,0-.592.08c-4.054,3.436-9.227,7.841-10.855,9.308a2.247,2.247,0,0,1-3.1,0c-1.735-1.563-7.545-6.5-10.854-9.307a.555.555,0,0,0-.914.423v13.954a2.222,2.222,0,0,0,2.219,2.219H24.414a2.222,2.222,0,0,0,2.219-2.219V126.967A.555.555,0,0,0,26.311,126.463Z" transform="translate(0 -123.165)" fill="#fff"/>
                                                    </g>
                                                  </g>
                                                </g>
                                            </svg>
                                        </button>
                                        <div class="dropdown-content">
                                            <div class="dropdown-notification-blk dropdown-notification-blk-chat">
                                                 
                                                @if(count($globalconversation)>0)
                                                    <ul>
                                                        @foreach($globalconversation as $conversation)
                                                            <li class="{{$conversation['messages_count']>0 ? 'newChat' : '' }}">
                                                                <a href="{{route('frontend.one-chat',$conversation['userId'])}}" class="dropdown-notification-item">
                                                                    <div class="dropdown-notification-icon">
                                                                        <figure class="obj-fit">
                                                                            <img src="{{asset('profile/colleicon.png')}}">
                                                                        </figure>
                                                                    </div>
                                                                    <div class="dropdown-notification-item-info">
                                                                        <div class="notification-item-message">{{ $conversation['username']?? 'No User' }} 
                                                                            @if($conversation['messages_count']>0)
                                                                            <span class="badge badge-secondary">{{$conversation['messages_count']}}</span>
                                                                            @endif 
                                                                        </div>
                                                                        <div class="notification-item-time">{{$conversation['messages_count']>0 ? 'Now' : '' }}</div>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                    <a href="{{route('frontend.one-chat',$globalconversation[0]['userId'])}}" class="dropdown-view-all-btn">View all Message</a>
                                                @else
                                                    <a href="#" class="dropdown-view-all-btn">No New Messages</a>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                @endif
                                <li class="btn-blue-new">
                                <a class="mobile-view-bell" href="{{route('frontend.notification.index')}}">
                                        <svg xmlns="http://www.w3.org/2000/svg" id="notification-bell" width="25.265" height="25.265" viewBox="0 0 25.265 25.265">
                                                <path id="Path_19052" data-name="Path 19052" d="M0,0H25.265V25.265H0Z" fill="none"/>
                                                <path id="Path_19053" data-name="Path 19053" d="M20.869,19.545l.421.561a.526.526,0,0,1-.421.842H4.026a.526.526,0,0,1-.421-.842l.421-.561V10.422a8.422,8.422,0,0,1,16.843,0ZM9.816,22H15.08a2.632,2.632,0,1,1-5.263,0Z" transform="translate(0.184 0.105)" fill="#fff"/>
                                            </svg>
                                            
                                        </a>
                                    <div class="dropdown removebtnmodal">
                                        <button class="dropbtn info-dropdown">
                                            @if($countNewNotification>0)
                                        <span class="info-dropdown-item">{{$countNewNotification}}</span>
                                        @endif    
                                        <svg xmlns="http://www.w3.org/2000/svg" id="notification-bell" width="25.265" height="25.265" viewBox="0 0 25.265 25.265">
                                                <path id="Path_19052" data-name="Path 19052" d="M0,0H25.265V25.265H0Z" fill="none"/>
                                                <path id="Path_19053" data-name="Path 19053" d="M20.869,19.545l.421.561a.526.526,0,0,1-.421.842H4.026a.526.526,0,0,1-.421-.842l.421-.561V10.422a8.422,8.422,0,0,1,16.843,0ZM9.816,22H15.08a2.632,2.632,0,1,1-5.263,0Z" transform="translate(0.184 0.105)" fill="#fff"/>
                                            </svg>
                                        </button>
                                        <div class="dropdown-content">
                                            <div class="dropdown-notification-blk">
                                                @if(count($globalnotification)>0)
                                                <ul>
                                                    @foreach($globalnotification as $notification)
                                                    <li class="{{$notification['is_read']==0 ? 'newChat' : '' }}">
                                                        <?php 

                                                         ?>
                                                        <a href="{{route('frontend.notification.show',base64_encode($notification['id']))}}" class="dropdown-notification-item">
                                                            <div class="dropdown-notification-icon">
                                                                <figure class="obj-fit">
                                                                    <?php $userImage= $notification['profile']??'colleicon.png'; ?>
                                                                    <img src="{{asset('profile/colleicon.png')}}">
                                                                </figure>
                                                            </div>
                                                            <div class="dropdown-notification-item-info">
                                                                 <div class="notification-item-message">{{ $notification['message'] }} 
                                                                    
                                                                </div>

                                                                <div class="notification-item-time">{{$notification['is_read']==0 ? 'Now' : '' }}</div>
                                                            </div>
                                                            
                                                        </a>
                                                    </li>
                                                    @endforeach
                                                </ul>
                                                <a href="{{route('frontend.notification.index')}}" class="dropdown-view-all-btn">View all Notifications</a>
                                                
                                                @else
                                                <a href="#" class="dropdown-view-all-btn">No New Notifications</a>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- <li class="nonswitchapp">
                                    <div class="dropdown"> -->


                                        <!-- <button class="dropbtn user-info-dropdown"> 
                                        <div class="user-info-acc"> -->
                                                <!-- <figure class="obj-fit">
                                                    <?php
                                                        // $userImage =auth()->guard('web')->user()->profile; 
                                                        // if (filter_var($userImage, FILTER_VALIDATE_URL)==false) { 
                                                        //     $userImage = asset('profile/'.auth()->guard('web')->user()->profile);
                                                        // } 
                                                        // <img src="{{$userImage}}">

?>
                                                </figure> -->
                                                <!-- <div class="{{auth()->guard('web')->user()->gender==1 ? 'male-color' :'female-color'}}">{{auth()->guard('web')->user()->systemNickname}}</div>
                                            </div>
                                        </button> -->

                                        <!-- <button class="dropbtn info-dropdown">
                                              
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" fill="#fff"><path d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"/></svg>
                                        </button>

                                        <div class="dropdown-content">
                                            <div class="dropdown-user-info-blk">
                                                <ul>
                                                    <li>
                                                        <a href="{{route('frontend.my_profile')}}" class="user-info-item">{{__('My Profile')}}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{{route('frontend.change_password')}}" class="user-info-item">{{__('Change Password')}}</a>
                                                    </li>
                                                    <li>
                                                        @php
                                                         $message= session()->get('locale')=='ar' ? 'هل أنت متأكد أنك تريد تسجيل الخروج؟' : 'Are you sure you want to log out?';
                                                        @endphp
                                                        
                                                            <li><a class="user-info-item" href="#"
                                                           onclick="if(confirm('{{$message}}')) {event.preventDefault();document.querySelector('#logout-form').submit()} ">
                                                            {{ __('lang.logout') }}
                                                        </a></li>

                                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                            @csrf
                                                        </form>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li> -->
                            </ul>
                            @if($global_setting['show_language']==1)
                            <?php if (session()->has('locale')) { ?>
                            <a href="{{route('lang',session()->get('locale'))}}" class="lang-btn">{{session()->get('locale')=='en' ? 'عربى' : 'English'}} <span></span></a>
                            <?php }else{ ?>
                            <a href="{{route('lang','en')}}" class="lang-btn">عربى <span></span></a>
                            <?php } ?>
                            @endif
                            <!-- <a href="javascript:;" class="lang-btn">EN <span></span></a> -->
                        </div>
                        @endauth

                                @auth('web')
                                @else
                        <div class="nav-right">
                            <ul class="nav-right-menu">
                                    {{--<li><a class="btn btn-blue" href="{{route('goLogin')}}">{{ __('lang.login') }}</a></li>
                                    <li><a class="btn btn-blue" href="{{route('goSignUp')}}">{{ __('lang.signUp') }}</a></li>--}}
                                
                            </ul>
                            @if($global_setting['show_language']==1)
                                <?php if (session()->has('locale')) { ?>
                                <a href="{{route('lang',session()->get('locale'))}}" class="lang-btn">{{session()->get('locale')=='en' ? 'عربى' : 'English'}} <span></span></a>
                                <?php }else{ ?>
                                <a href="{{route('lang','en')}}" class="lang-btn">عربى <span></span></a>
                                <?php } ?>
                            @endif
                        </div>
                                @endauth
                    </nav>
                </div>
            </div>
        </header>
        <style>
@media screen and (min-width: 975px) {
 .switchapp{
   display:none;
 }
}

@media screen and (max-width: 1000px) {
 .nonswitchapp{
   display:none;
 }
}

    </style>