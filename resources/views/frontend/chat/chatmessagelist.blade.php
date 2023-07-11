<ul>
<?php foreach ($users as $ukey => $uvalue) {
  ?>
<li>
    <a href="{{route('frontend.one-chat',base64_encode($uvalue['id']))}}" class="chat-box-user-list-item">
        <div class="chat-box-user-list-item-dtl">
            <!-- <figure class="obj-fit">
                <img src="{{asset('profile/'.$uvalue['profile'])}}">
            </figure> -->
            <div class="">
                <h4 class="{{$uvalue['gender']==1 ? 'male-color' :'female-color'}}" style="font-size: 16px;font-weight: 600;font-family:'Aktiv-Bold';word-break: break-all;">{{$uvalue['systemNickname']?? 'No User'}}</h4>
            </div>
        </div>
    </a>
</li>
<?php } ?>
</ul>