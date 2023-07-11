<li>
    <div class="rating-replyed-item">
        <div class="rating-user-info {{$teacherRatingData['users']['gender']==2? 'replyed' : ''}} mb-4">
            <h4>{{$teacherRatingData['users']['systemNickname']}}</h4>
            <p>{{__('Post Date')}}: {{date('M d, Y',strtotime($teacherRatingData['created_at']))}}</p>

        </div>
        <?php 
            $color='';
            if($teacherRatingData['selectedUser'] && $teacherRatingData['selectedUser']['gender']){
                $color=$teacherRatingData['selectedUser']['gender']==1 ? '#005BDF' : '#ED0E69';
            }
        ?>
        <p class="description"><span style="color : {{$color}}">{{$teacherRatingData['selectedUser']['systemNickname']? '@'.$teacherRatingData['selectedUser']['systemNickname'].' : ':''}} </span> {{$teacherRatingData['message']}}</p>
        <hr>
        <?php
                    $firstId='';
                    $like='';
                    $dislike='';
                    if($type=='teacher'){
                        $firstId= base64_encode($teacherRatingData->teacher_id);
                        $like="addLikeDislike('".$firstId."','".base64_encode($teacherRatingData->id)."','like')";
                        $dislike="addLikeDislike('".$firstId."','".base64_encode($teacherRatingData->id)."','dislike')";
                    }
                    if($type=='professor'){
                        $firstId= base64_encode($teacherRatingData->professor_id);
                        $like="addLikeDislike('".$firstId."','".base64_encode($teacherRatingData->id)."','like')";
                        $dislike="addLikeDislike('".$firstId."','".base64_encode($teacherRatingData->id)."','dislike')";
                    }
                    if($type=='university'){
                        $firstId= base64_encode($teacherRatingData->university_id);
                        $like="addUniversityLikeDislike('".$firstId."','".base64_encode($teacherRatingData->id)."','like')";
                        $dislike="addUniversityLikeDislike('".$firstId."','".base64_encode($teacherRatingData->id)."','dislike')";
                    }
                    ?>
        <div class="action-links">
            <ul class="changelikeDislikeIcon">
                <li class="likeli">
                    <a href="javascript:void(0);" onclick="<?= $like ?>">
                    <span class="likecount "></span> 
                    <img class="Like" src="{{asset('frontend/images/thumb-up.svg')}}">
                         <span class="ml-2"> Like</span> 
                    </a>
                </li>
                <li class="dislikeli">
                    <a href="javascript:void(0);" onclick="<?= $dislike ?>">
                    <span class="dislikecount "></span> 
                        
                    <img class="Dislike" src="{{asset('frontend/images/thumb-down.svg')}}"> 
                        <span class="ml-2">Dislike</span> 
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="replyChildUser(this,'{{base64_encode($teacherRatingData['users']['id'])}}','{{base64_encode($teacherRatingData['id'])}}')">
                         <img src="{{asset('frontend/images/reply.svg')}}">
                        <span class="ml-2"> Reply</span></a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="chatUser(this)">
                    <input type="hidden" class="chaturl" name="chaturl" value="{{route('frontend.one-chat',base64_encode($teacherRatingData['users']['id']))}}">
                    <img src="{{asset('frontend/images/message.svg')}}">

                        Message
                    </a>
                </li>
                <li class="ml-auto lastreport report">
                    <?php
                    $msg= "Are you sure you want to report/spam?";
                    $functionCall='';
                    if($type=='teacher'){
                        $pid= base64_encode($teacherRatingData->teacher_id);
                        $pid2= base64_encode($teacherRatingData->id);
                        $functionCall= "addTeacherReport(this,'".$pid."','".$pid2."')";

                    }
                    if($type=='professor'){
                        $pid= base64_encode($teacherRatingData->professor_id);
                        $pid2= base64_encode($teacherRatingData->id);
                        $functionCall= "addprofessorReport(this,'".$pid."','".$pid2."')";
                     

                    }
                    if($type=='university'){
                        $pid= base64_encode($teacherRatingData->university_id);
                        $pid2= base64_encode($teacherRatingData->id);
                        $functionCall= "addUniversityReport(this,'".$pid."','".$pid2."')";
                    }
                    ?>
                    <a href="javascript:void(0);" onclick="return confirm('<?= $msg ?>') ? <?= $functionCall ?>: ''">
                    <img class="teacherreport" src="{{asset('frontend/images/flag.svg')}}">

                    </a>
                </li>
            </ul>
        </div>
    </div>
</li>
