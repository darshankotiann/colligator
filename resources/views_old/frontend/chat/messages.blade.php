<li class="{{auth()->user()->id == $newMessage['user']['id'] ? 'reply' : ''}}">
    <div class="active-user-message-pic" style="background-image: url('{{asset('profile/'.$newMessage['user']['profile'])}}');"></div>
    <div class="active-user-message-box">
        <span class="message">{{$newMessage['message']}}</span>
        <span class="date-time">{{date('h:i a',strtotime($newMessage['created_at']))}} {{date('d M Y',strtotime($newMessage['created_at']))}}</span>
    </div>
</li>
