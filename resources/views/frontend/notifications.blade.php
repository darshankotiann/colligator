@extends('layouts.frontend.loginapp')

@section('content')
   <div class="site-wraper">
            
            <section class="notifications-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="notifications-heading">
                                <h3>Notifications</h3>
                            </div>

                            <div class="notification-list-block">
                                <ul> 
                                    
                                    @foreach($allNotifications as $notification) 
                                    @php
                                    $explodeData= explode(' ',$notification['message']);
                                    $replaceString= str_replace($explodeData[0],'',$notification['message']);
                                    $colorType= $notification->users->gender==1 ? '#005BDF':'#ed0e69';
                                    @endphp
                                    <li class="{{ $notification['is_read']==0 ? 'active_bluebx' : ''}} ">
                                        <div class="notification-list-item">
                                            <div class="notification-list-item-cont">
                                                <div class="notification-list-item-info-icon">
                                                    <figure><i class="ri-notification-3-line"></i></figure>
                                                </div>
                                                <div class="notification-list-item-info {{$notification['is_read']==0 ? 'newChat' : '' }}">
                                                    <a href="{{route('frontend.notification.show',base64_encode($notification['id']))}}">
                                                    <div class="notification-list-item-message"><span style="color:{{$colorType}}">{{$explodeData[0]}}</span>{{$replaceString}}</div>
                                                    <div class="notification-list-item-time">
                                                        <?php 
                                                        $now = time();
                                                        $your_date = strtotime($notification['created_at']);
                                                        $datediff = $now - $your_date;

                                                        $day= round($datediff / (60 * 60 * 24));
                                                         echo $day>0 ? $day.' days ago' :' today'; 
                                                         ?>
                                                     </div>
                                                     </a>
                                                </div>
                                            </div>
                                            <form action="{{ route('frontend.notification.destroy', base64_encode($notification['id'])) }}" method="POST">
                                                {{ method_field('DELETE') }}
                                                {{ csrf_field() }}
                                            <button type="close" class="close-btn">
                                                <!-- <img src="{{asset('frontend/images/close.svg')}}"> -->
                                                <i class="ri-close-line"></i>
                                            </button>
                                            </form>
                                        </div>
                                    </li>
                                    @endforeach
                                       
                                <?php if(isset($allNotifications) && count($allNotifications) == 0){ ?>
                                   <li class="noNotification">
                                       <img src="{{asset('frontend/images/notification-icon.png')}}">
                                        <p>There are no notifications.</p>
                                    </li>
                                <?php } ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
@endsection
<style>
    @media (max-width: 479px){
            .footer_none{
                display: none;
            }
        }
</style>
