@foreach($allMessages as $messages)

<li class="{{auth()->user()->id == $messages['user']['id'] ? 'reply' : ''}}">
    <div class="active-user-message-pic" style="background-image: url('{{asset('profile/'.$messages['user']['profile'])}}');"></div>
    <div class="active-user-message-box">
        <span class="message">{{$messages['message']}}</span>
        <span class="date-time">{{date('h:i a',strtotime($messages['created_at']))}} {{date('d M Y',strtotime($messages['created_at']))}}</span>
    </div>
</li>
@endforeach
