<li>
    <div class="rating-replyed-item">
        <div class="rating-user-info {{$teacherRatingData['users']['gender']==2? 'replyed' : ''}} mb-4">
            <h4>{{$teacherRatingData['users']['systemNickname']}}</h4>
        </div>
        <p class="description">{{$teacherRatingData['selectedUser']? '@'.$teacherRatingData['selectedUser']['systemNickname'].' : ':''}}  {{$teacherRatingData['message']}}</p>
        <hr>
        <div class="action-links">
            <ul class="changelikeDislikeIcon">
                <li class="likeli">
                    <a href="javascript:void(0);" onclick="addLikeDislike('{{base64_encode($teacherRatingData['teacher_id'])}}','{{base64_encode($teacherRatingData['id'])}}','like')">
                        <img class="Like" src="{{asset('frontend/images/thumb-up.svg')}}">
                         <span class="ml-2"> Like</span> 
                    </a>
                </li>
                <li class="dislikeli">
                    <a href="javascript:void(0);" onclick="addLikeDislike('{{base64_encode($teacherRatingData['teacher_id'])}}','{{base64_encode($teacherRatingData['id'])}}','dislike')">
                        <img class="Dislike" src="{{asset('frontend/images/thumb-down.svg')}}"> 
                        <span class="ml-2">Dislike</span> 
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="replyChildUser(this,'{{base64_encode($teacherRatingData['users']['id'])}}')">
                         <img src="{{asset('frontend/images/reply.svg')}}">
                        <span class="ml-2"> Reply</span></a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15.497" height="15.11" viewBox="0 0 15.497 15.11">
                            <path id="message" d="M5.452,15.4,2,18.11V3.775A.775.775,0,0,1,2.775,3H16.722a.775.775,0,0,1,.775.775V14.623a.775.775,0,0,1-.775.775Zm-.536-1.55H15.948V4.55H3.55V14.921ZM6.649,8.424h6.2v1.55h-6.2Z" transform="translate(-2 -3)" fill="#005bdf"/>
                          </svg>
                        Message
                    </a>
                </li>
                <li class="float-right">
                    <a href="javascript:void(0);">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="flag" transform="translate(-2)">
                              <path id="Path_19645" data-name="Path 19645" d="M0,0H24V24H0Z" transform="translate(2)" fill="none"/>
                              <path id="Path_19646" data-name="Path 19646" d="M4,17v5H2V3H21.138a.5.5,0,0,1,.435.748L18,10l3.573,6.252a.5.5,0,0,1-.435.748H4ZM4,5V15H18.554L15.7,10l2.858-5Z" transform="translate(3)" fill="#465e86"/>
                            </g>
                        </svg>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</li>