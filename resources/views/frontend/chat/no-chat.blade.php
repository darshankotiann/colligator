@extends('layouts.frontend.loginapp')

@section('content')
   <div class="site-wraper">
            
            <section class="notifications-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="notifications-heading">
                                <h3>Inbox</h3>
                            </div>

                            <div class="notification-list-block">
                                <ul> 

                                   <li class="noNotification">
                                       <img src="{{asset('frontend/images/No-chat.png')}}">
                                        <p>The inbox is totally empty.</p>
                                    </li>
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
