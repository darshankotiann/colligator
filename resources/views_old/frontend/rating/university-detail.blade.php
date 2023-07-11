@extends('layouts.frontend.app')
@section('content')
<style type="text/css">
    .ui-menu-item .search-contact-box{
        display: list-item;                                                     
        list-style-type: disc;
    list-style-position: inside; 
    }
</style>
<?php 
use App\Helpers\Helper;
   ?>
 <section class="user-detail-sec">
    
    <div class="container">
        <div class="user-detail-block">
            <!--user-info-block-->
            <div class="user-detail-info-blk">
                <div class="d-flex align-items-center">
                    <div class="user-detail-image">
                        <figure class="obj-fit">
                            <!-- @php $profile= $university->profile ? 'university/'.$university->profile : 'profile/colleicon.png' ;
                            @endphp -->
                            @php
                                $url = asset('profile/university-icon.png');
                                if($university->profile && ($university->show_profile ==1)){
                                    $url = asset('/university/'.$university->profile);
                                }
                            @endphp
                            @if(!empty($url))
                                <img src="{{$url}}" width="70">
                            @endif
                        </figure>
                    </div>
                    <div class="user-detail-info">
                        <div class="user-detail-info-nm">{{$university->name? ucwords($university->name) : ''}}</div>
                        <div class="user-detail-info-add">{{$countryName->name??''}}.</div>
                        <?php $countRatings =  isset($universityRatingData)? count($universityRatingData) : 0 ?>
                        <div class="user-detail-info-desc">{{__('lang.based_on_ratings', ['num'=> $countRatings])}}</div>
                    </div>
                </div>
                <div class="user-need-connection">
                     {{--$university->is_active==0 ? 'inactiveLink' : ''--}}
                     <a  href="{{route('frontend.rate_university',base64_encode($university->id))}}" class="btn blue-btn checkUser ">{{__('Rate This University!')}}</a>
                     <a  onclick="return checkAuthUserOnMOdal('add_university')" href="javascript:void(0);" class="btn blue-btn">Duplicate/Correction?</a>
                </div>
            </div>
            <!--user-info-block-->
            <hr>
              @if(isset($universityRatingData) && count($universityRatingData)>0)
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="info-item-blk {{Helper::getColor(round($professor_range/$rowcount,2))}}">
                        <p>{{__('Professors')}}</p>
                        <h3>{{number_format((float)$professor_range/$rowcount, 1, '.', '')}}/10</h3>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="info-item-blk {{Helper::getColor(round($course_range/$rowcount,2))}}">
                        <p>{{__('Courses')}}</p>
                        <h3>{{number_format((float)$course_range/$rowcount, 1, '.', '')}}/10</h3>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="info-item-blk {{Helper::getColor(round($facility_range/$rowcount,2))}}">
                        <p>{{__('Facilities')}}</p>
                        <h3>{{number_format((float)$facility_range/$rowcount, 1, '.', '')}}/10</h3>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="info-item-blk lw-bg">
                        <p>{{__('Copy/Share Link')}}</p>
                       <ul>
                           <li>
                            <a href="{{route('frontend.universityProfile',base64_encode($university->id))}}" class="copy-link copy_text"  title="Copy Link">
                                <img src="{{asset('frontend/images/copy-link-icon.svg')}}">
                            </a>
                           </li>
                           <li>
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{route('frontend.universityProfile',base64_encode($university->id))}}" target="_blank" title="Share on Facebook">
                                <img class="facebookbox" src="{{asset('frontend/images/fb.png')}}">
                            </a>
                           </li>
                           <li>
                            <a target="_blank" class="twitter" href="https://twitter.com/intent/tweet?text={{route('frontend.universityProfile',base64_encode($university->id))}}"><img src="{{asset('frontend/images/twitter-icon.svg')}}"></a>
                           </li>
                           <li>
                            <a href="https://api.whatsapp.com/send?text={{route('frontend.universityProfile',base64_encode($university->id))}}" data-action="share/whatsapp/share" onClick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on whatsapp"><img src="{{asset('frontend/images/whatsapp.png')}}"></a>
                           </li>
                       </ul>
                    </div>
                </div>
            </div>
            @else
            <div class="row justify-content-between align-items-center shareLinkMView">
                <div class="col-md-6 col-sm-6">
                    <div class="info-item-blk lw-bg">
                        <p>{{__('Copy/Share Link')}}</p>
                        <ul>
                           <li>
                            <a href="{{route('frontend.universityProfile',base64_encode($university->id))}}" class="copy-link copy_text"  title="Copy Link">
                                <img src="{{asset('frontend/images/copy-link-icon.svg')}}">
                            </a>
                           </li>
                           <li>
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{route('frontend.universityProfile',base64_encode($university->id))}}" target="_blank" title="Share on Facebook">
                                <img class="facebookbox" src="{{asset('frontend/images/fb.png')}}">
                            </a>
                           </li>
                           <li>
                            <a target="_blank" class="twitter" href="https://twitter.com/intent/tweet?text={{route('frontend.universityProfile',base64_encode($university->id))}}"><img src="{{asset('frontend/images/twitter-icon.svg')}}"></a>
                           </li>
                           <li>
                            <a href="https://api.whatsapp.com/send?text={{route('frontend.universityProfile',base64_encode($university->id))}}" data-action="share/whatsapp/share" onClick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on whatsapp"><img src="{{asset('frontend/images/whatsapp.png')}}"></a>
                           </li>
                       </ul>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="no-rating-message">This University has no ratings yet. Rate or share link so your Colleagues rate the university!</div>
                </div>
            </div>

            <div class="row justify-content-between align-items-center hideLinkMView">
                <div class="col-md-6 col-sm-6">
                    <div class="no-rating-message">This University has no ratings yet. Rate or share link so your Colleagues rate the university!</div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="info-item-blk lw-bg">
                        <p>{{__('Copy/Share Link')}}</p>
                        <ul>
                           <li>
                            <a href="{{route('frontend.universityProfile',base64_encode($university->id))}}" class="copy-link copy_text"  title="Copy Link">
                                <img src="{{asset('frontend/images/copy-link-icon.svg')}}">
                            </a>
                           </li>
                           <li>
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{route('frontend.universityProfile',base64_encode($university->id))}}" target="_blank" title="Share on Facebook">
                                <img class="facebookbox" src="{{asset('frontend/images/fb.png')}}">
                            </a>
                           </li>
                           <li>
                            <a target="_blank" class="twitter" href="https://twitter.com/intent/tweet?text={{route('frontend.universityProfile',base64_encode($university->id))}}"><img src="{{asset('frontend/images/twitter-icon.svg')}}"></a>
                           </li>
                           <li>
                            <a href="https://api.whatsapp.com/send?text={{route('frontend.universityProfile',base64_encode($university->id))}}" data-action="share/whatsapp/share" onClick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on whatsapp"><img src="{{asset('frontend/images/whatsapp.png')}}"></a>
                           </li>
                       </ul>
                    </div>
                </div>
            </div>

            @endif
            <hr>
            <div class="user-rating-block">
                <!-- <div class="user-rating-btn mb-4">
                    {{--$university->is_active==0 ? 'inactiveLink' : ''--}}
                    <a  href="{{route('frontend.rate_university',base64_encode($university->id))}}" class="blue-btn checkUser ">{{__('Rate This University')}}</a>
                </div> -->
                <h3 class="heading">{{__('lang.ratings')}}:</h3>
                @if(isset($universityRatingData) && count($universityRatingData)>0)
                    <div class="rated-items-list">
                        <ul>
                            @foreach($universityRatingData as $ratingData)
                            <?php ?>
                            <li>
                                <div class="user-rating-item">
                                    <div class="row mb-4">
                                        <div class="col-md-4">
                                            <div class="rating-user-info {{$ratingData['users']['gender']==2? 'replyed' : ''}}">
                                                <h4>{{$ratingData['users']->systemNickname}}</h4>
                                                <p>{{__('Post Date')}}: {{date('M d, Y',strtotime($ratingData['replyMessage']['created_at']))}}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-8 text-right">
                                            <div class="rated-items universityrated-items">
                                                <ul>
                                                    <li><a class="{{Helper::getColor($ratingData['replyMessage']['professor_range'])}}">{{__('Professors')}} : {{$ratingData['replyMessage']['professor_range']}}</a></li>
                                                    <li><a class="{{Helper::getColor($ratingData['replyMessage']['course_range'])}}">{{__('Courses')}}: {{$ratingData['replyMessage']['course_range']}}</a></li>
                                                    <li><a class="{{Helper::getColor($ratingData['replyMessage']['facility_range'])}}">{{__('Facilities')}}: {{$ratingData['replyMessage']['facility_range']}}</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="rated-items mb-4">
                                        <ul>
                                            <!-- <li><a class="lw-bg">Textbook: Yes</a></li> -->
                                        </ul>
                                    </div>
                                    @if($ratingData['replyMessage']['message'] != '' || $ratingData['replyMessage']['message'] != null)
                                    <p class="description">{{$ratingData['replyMessage']['message']}}</p>
                                    @endif
                                    <hr>
                                    <div class="action-links">
                                        <ul class="changelikeDislikeIcon">
                                            <li class="{{auth()->user() ?'likeli':'' }}">
                                                <a href="javascript:void(0);" onclick="addUniversityLikeDislike('{{base64_encode($university->id)}}','{{base64_encode($ratingData['replyMessage']['id'])}}','like')">
                                                @php 

                                                $res= explode(',',$ratingData['replyMessage']['likes']);
                                                @endphp
                                                    <span class="likecount {{isset(auth()->user()->id) && in_array(auth()->user()->id,explode(',',$ratingData['replyMessage']['likes']) ) ? 'userLike' : ''}}">{{!empty($res[0]) ? count(explode(',',$ratingData['replyMessage']['likes'])) : ''  }}
                                                    </span>
                                                    @auth
                                                    @if(in_array(auth()->user()->id,explode(',',$ratingData['replyMessage']['likes']) ))
                                                        <img class="Like" src="{{asset('frontend/images/thumb-up-fill.svg')}}">
                                                    @else
                                                    <img class="Like" src="{{asset('frontend/images/thumb-up.svg')}}">
                                                    @endif
                                                    @else
                                                    <img class="Like" src="{{asset('frontend/images/thumb-up.svg')}}">
                                                    @endauth

                                                     <span class="ml-2"> {{__('lang.like')}}</span> 
                                                </a>
                                            </li>
                                            <li class="{{auth()->user() ?'dislikeli':'' }}">
                                                <a href="javascript:void(0);" onclick="addUniversityLikeDislike('{{base64_encode($university->id)}}','{{base64_encode($ratingData['replyMessage']['id'])}}','dislike')">
                                                    @php 
                                                        $res= explode(',',$ratingData['replyMessage']['dislikes']);
                                                    @endphp
                                                    <span class="dislikecount {{isset(auth()->user()->id) && in_array(auth()->user()->id,explode(',',$ratingData['replyMessage']['dislikes']) ) ? 'userDislike' : ''}}">
                                                    {{!empty($res[0]) ? count(explode(',',$ratingData['replyMessage']['dislikes'])) : ''  }}
                                                    </span>

                                                    @auth
                                                    @if(in_array(auth()->user()->id,explode(',',$ratingData['replyMessage']['dislikes']) ))
                                                    <img class="Dislike" src="{{asset('frontend/images/thumb-down-fill.svg')}}"> 
                                                    @else
                                                    <img class="Dislike" src="{{asset('frontend/images/thumb-down.svg')}}"> 
                                                    @endif
                                                    @else
                                                    <img class="Dislike" src="{{asset('frontend/images/thumb-down.svg')}}"> 
                                                    @endauth
                                                    <span class="ml-2">{{__('lang.dislike')}}</span> 
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" onclick="replyUser(this,'{{base64_encode($ratingData['users']->id)}}','{{base64_encode($ratingData['replyMessage']['id'])}}')">
                                                    <img src="{{asset('frontend/images/reply.svg')}}"><span class="ml-2"> {{__('lang.reply')}}</span></a>
                                            </li>
                                            @if($global_setting->private_message==1)
                                            <li>
                                                <a href="javascript:void(0);" onclick="chatUser(this)" >
                                                    <input type="hidden" class="chaturl" name="chaturl" value="{{route('frontend.one-chat',base64_encode($ratingData['users']->id))}}">
                                                    <img src="{{asset('frontend/images/message.svg')}}">
                                                    <span class="ml-2"> {{__('lang.send_message')}}</span>
                                                </a>
                                            </li>
                                            @endif
                                            @if($ratingData['replyMessage']['message'] != '' || $ratingData['replyMessage']['message'] != null)

                                            <li class="ml-auto lastreport {{auth()->user() ?'report':'' }}">
                                                    @auth
                                                    <?php
                                                    if(in_array(auth()->user()->id,explode(',',$ratingData['replyMessage']['report']) )){
                                                        $msg= "Are you sure you want to remove report/spam?";
                                                    }else{
                                                        $msg= "Are you sure you want to report/spam?";

                                                    }?>
                                                    @else
                                                        @php $msg= "Are you sure you want to report/spam?"; @endphp
                                                    @endauth
                                                    <a href="javascript:void(0);" onclick="return confirm('<?= $msg ?>') ? addUniversityReport(this,'{{base64_encode($university->id)}}','{{base64_encode($ratingData['replyMessage']['id'])}}'): ''">
                                                    @auth
                                                    @if(in_array(auth()->user()->id,explode(',',$ratingData['replyMessage']['report']) ))
                                                    <img class="teacherreport" src="{{asset('frontend/images/flag-2-fill.svg')}}">
                                                    @else
                                                    <img class="teacherreport" src="{{asset('frontend/images/flag.svg')}}">
                                                    @endif
                                                    @else
                                                    <img class="teacherreport" src="{{asset('frontend/images/flag.svg')}}">
                                                    @endauth
                                                </a>
                                            </li>
                                            @endif
                                        </ul>
                                    </div>
                                    <hr>
                                    @if(count($ratingData['replyMessage']['children'])>0)
                                    <?php //echo "<pre>"; print_r($ratingData['children']); die; ?>
                                    <div class="view-reply">
                                        <a href="javascript:void(0);" class="view-reply-btn 2 showreply">{{count($ratingData['replyMessage']['children'])>1 ? (__('lang.view_replies',['num'=>count($ratingData['replyMessage']['children'])])) : (__('lang.view_reply',['num'=>count($ratingData['replyMessage']['children'])]))  }}</a> 
                                        <a href="javascript:void(0);" class="view-reply-btn 2 hidereply" style="display: none;">{{count($ratingData['replyMessage']['children'])>1 ? (__('lang.hide_replies')) : (__('lang.hide_reply'))  }}</a> 
                                    </div>
                                    <div class="rating-replyed-item-list 2">
                                        <ul class="rating_ul_class ">
                                            @foreach($ratingData['replyMessage']['children'] as $children)
                                            <?php //echo "<pre>"; print_r($children); die; ?>
                                            <li>
                                                <div class="rating-replyed-item">
                                                    <div class="rating-user-info {{$children['userData']['gender']==2? 'replyed' : ''}} mb-4">
                                                        <h4>{{$children['userData']['systemNickname']}}</h4>
                                                        <p>{{__('Post Date')}}: {{date('M d, Y',strtotime($children['created_at']))}}</p>
                                                    </div>
                                                    @if($children['message'] != '' || $children['message'] != null)
                                                    <?php 
                                                    $color='';
                                                    if($children['parent_user_name'] && $children['genderColor']){
                                                        $color=     $children['genderColor']==1 ? '#005BDF' : '#ED0E69';
                                                    }
                                                    
                                                    ?>
                                                    <p class="description"><span style="color : {{$color}}">{{$children['parent_user_name']? '@'.$children['parent_user_name'].' : ':''}} </span> {{$children['message']}}</p>
                                                    @endif
                                                    <hr>
                                                    <div class="action-links">
                                                        <ul class="changelikeDislikeIcon">
                                                            <li class="{{auth()->user() ?'likeli':'' }}">
                                                                <a href="javascript:void(0);" onclick="addUniversityLikeDislike('{{base64_encode($university->id)}}','{{base64_encode($children['id'])}}','like')">
                                                        @php 
                                                        $res= explode(',',$children['likes']);
                                                        @endphp
                                                        <span class="likecount {{isset(auth()->user()->id ) && in_array(auth()->user()->id,explode(',',$children['likes']) ) ? 'userLike' : ''}}">
                                                          {{!empty($res[0]) ? count(explode(',',$children['likes'])) : ''  }}
                                                        </span>
                                                                   @auth
                                                                   @if(in_array(auth()->user()->id,explode(',',$children['likes']) ))
                                                                    <img class="Like" src="{{asset('frontend/images/thumb-up-fill.svg')}}">
                                                                    @else
                                                                    <img class="Like" src="{{asset('frontend/images/thumb-up.svg')}}">
                                                                    @endif
                                                                    @else
                                                                    <img class="Like" src="{{asset('frontend/images/thumb-up.svg')}}">
                                                                    @endauth
                                                                     <span class="ml-2"> {{__('lang.like')}}</span> 
                                                                </a>
                                                            </li>
                                                            <li class="{{auth()->user() ?'dislikeli':'' }}">
                                                                <a href="javascript:void(0);"onclick="addUniversityLikeDislike('{{base64_encode($university->id)}}','{{base64_encode($children['id'])}}','dislike')">
                                                                    @php 
                                                                    $res= explode(',',$children['dislikes']);
                                                                    @endphp
                                                                    <span class="dislikecount  {{in_array(isset(auth()->user()->id) && auth()->user()->id,explode(',',$children['dislikes']) ) ? 'userDislike' : ''}}">
                                                                    {{!empty($res[0]) ? count(explode(',',$children['dislikes'])) : ''  }}                      
                                                                    </span>  
                                                                    @auth
                                                                    @if(in_array(auth()->user()->id,explode(',',$children['dislikes']) ))
                                                                    <img class="Dislike" src="{{asset('frontend/images/thumb-down-fill.svg')}}"> 
                                                                    @else
                                                                    <img class="Dislike" src="{{asset('frontend/images/thumb-down.svg')}}"> 
                                                                    @endif
                                                                    @else
                                                                    <img class="Dislike" src="{{asset('frontend/images/thumb-down.svg')}}"> 
                                                                    @endauth
                                                                     <span class="ml-2">{{__('lang.dislike')}}</span> 
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:void(0);" onclick="replyChildUser(this,'{{base64_encode($children['userData']['id'])}}','{{base64_encode($children['id'])}}')">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="19.249" height="15.399" viewBox="0 0 19.249 15.399">
                                                                        <path id="reply" d="M10.624,19.4l9.624-7.7L10.624,4V8.812A9.624,9.624,0,0,0,1,18.437c0,.263.01.523.031.78A8.665,8.665,0,0,1,8.4,14.592l.3,0h1.925Zm1.925-6.737H8.667l-.334.007a10.561,10.561,0,0,0-3.538.737,7.684,7.684,0,0,1,5.83-2.669h1.925V8L17.167,11.7l-4.618,3.695Z" transform="translate(-1 -4)" fill="#005bdf"/>
                                                                      </svg>
                                                                    {{__('lang.reply')}}</a>
                                                            </li>
                                                            @if($global_setting->private_message==1)
                                                            <li>
                                                                <a href="javascript:void(0);" onclick="chatUser(this)" >
                                                                    <input type="hidden" class="chaturl" name="chaturl" value="{{route('frontend.one-chat',base64_encode($children['userData']['id']))}}">
                                                                    <img src="{{asset('frontend/images/message.svg')}}">
                                                                    <span class="ml-2"> {{__('lang.send_message')}}</span>
                                                                </a>
                                                            </li>
                                                            @endif
                                                            @if($children['message'] != '' || $children['message'] != null)

                                                            <li class="ml-auto lastreport {{auth()->user() ?'report':'' }}">
                                                    @auth
                                                    <?php
                                                    if(in_array(auth()->user()->id,explode(',',$children['report']) )){
                                                        $msg= "Are you sure You want to remove report/spam from it";
                                                    }else{
                                                        $msg= "Are you sure You want to report/spam it";

                                                    }?>
                                                    @else
                                                        @php $msg= "Are you sure You want to report/spam it"; @endphp
                                                    @endauth
                                                    <a href="javascript:void(0);" onclick="return confirm('<?= $msg ?>') ? addUniversityReport(this,'{{base64_encode($university->id)}}','{{base64_encode($children['id'])}}') : ''">
                                                                    @auth
                                                                    @if(in_array(auth()->user()->id,explode(',',$children['report']) ))
                                                                    <img class="teacherreport" src="{{asset('frontend/images/flag-2-fill.svg')}}">
                                                                    @else
                                                                    <img class="teacherreport" src="{{asset('frontend/images/flag.svg')}}">
                                                                    @endif
                                                                    @else
                                                                    <img class="teacherreport" src="{{asset('frontend/images/flag.svg')}}">
                                                                    @endauth
                                                                </a>
                                                            </li>
                                                            @endif
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            @endforeach
                                            
                                        </ul>
                                            <div class="rating-comment-form-blk">
                                                <form action="{{route('frontend.add_university_review')}}" method="post" class="universityReview">
                                                    @csrf
                                                    <input type="hidden" name="uId" class="uId" value="">
                                                    <input type="hidden"  class="oldId" value="{{base64_encode($ratingData['replyMessage']['id'])}}">
                                                    <input type="hidden" name="id" class="id" value="{{base64_encode($ratingData['replyMessage']['id'])}}">
                                                    <input type="hidden" name="universityId" class="TId" value="{{base64_encode($university->id)}}">
                                                    <div class="form-group parentname">
                                                        <div class="childCross"><span class="childname"></span><i class="fa fa-times crossIcon" onclick="removeReply(this)" style="right: 72px;width: auto;margin: auto;position: absolute;top: 10px; display:none"></i></div>
                                                        <div class="counterdiv">
                                                            
                                                        <textarea onfocusout="hidecounter(this)" onblur="textReplyCounter(this,this.form.counter,200);" onkeyup="textReplyCounter(this,this.form.counter,200);"  name="comment" placeholder="{{__('Write a Reply')}}...." class="form-control" rows="1" cols="15" ></textarea>
                                                        <input onblur="textReplyCounter(this.form.recipients,this,200);" disabled  onfocus="this.blur();"  maxlength="3" size="3" value="200 characters remaining" name="counter" class="counterReplyinput">

                                                        </div>


                                                        <button type="submit" class="btn comment-submit-btn">
                                                            <img src="{{asset('frontend/images/message-send.svg')}}">
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                    </div>
                                    @else
                               <!--      <div class="view-reply">
                                        <a href="javascript:void(0);" class="view-reply-btn 2">Add Reply</a> 
                                    </div> -->
                                    <div class="rating-replyed-item-list 2">
                                        <ul class="rating_ul_class">
                                        </ul>
                                            <div class="rating-comment-form-blk">
                                                <form action="{{route('frontend.add_university_review')}}" method="post" class="universityReview">
                                                    @csrf
                                                    <input type="hidden" name="uId" class="uId">
                                                    <input type="hidden" name="id" class="id">
                                                    <input type="hidden" name="universityId" class="TId" value="{{base64_encode($university->id)}}">
                                                    <div class="form-group parentname">
                                                        <span class="childname"></span>
                                                        <div class="counterdiv">
                                                        <textarea onfocusout="hidecounter(this)" onblur="textReplyCounter(this,this.form.counter,200);" onkeyup="textReplyCounter(this,this.form.counter,200);"  name="comment" placeholder="{{__('Write a Reply')}}...." class="form-control" rows="1" cols="15" ></textarea>
                                                        <input onblur="textReplyCounter(this.form.recipients,this,200);" disabled  onfocus="this.blur();"  maxlength="3" size="3" value="200 characters remaining" name="counter" class="counterReplyinput">

                                                        </div>

                                                        <button type="submit" class="btn comment-submit-btn">
                                                            <img src="{{asset('frontend/images/message-send.svg')}}">
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                    </div>
                                    @endif
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>

        </div>
    </div>
</section>
<div id="add_university" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>{{__('Needs Correction?')}}</h3>
                <button type="button" class="close" data-dismiss="modal">
                    <img src="{{asset('frontend/images/close-icon.svg')}}">
                </button>
            </div>
            <div class="modal-body">
                <div class="add_professore_form">
                    <form action="{{route('frontend.addSuggestion')}}" class="suggestionBox" method="post">
                        @csrf
                        <div class="form-group">
                            <input type="hidden" name="teacher_professor_id" value="{{base64_encode($university->id)}}">
                            <input type="hidden" name="type" value="3">
                            <textarea onfocusout="hidecounter(this)" onblur="textCounter(this,this.form.counter,200);" onkeyup="textCounter(this,this.form.counter,200);" style="width: : 608px; height: 94px; padding-top: 5px;padding-left: 5px;" name="suggestion" placeholder="Enter Your Suggestions" class="form-control" rows="1" cols="15" ></textarea>
                            <input onblur="textCounter(this.form.recipients,this,200);" disabled  onfocus="this.blur();" tabindex="999" maxlength="3" size="3" value="200 characters remaining" name="counter" class="counterinput">

                           <!--  <textarea type="text" name="suggestion" required placeholder="Enter Your Suggestion between 3 to 200 characters" class="form-control" spellcheck="false"></textarea> -->
                        </div>
                        <div class="form-group btn-block">
                            <button type="submit" class="btn submit-button subbtn btn-blue-new">{{__('lang.submit')}}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="dialog" title="Url Copied" style="display: none;">
<p>Url Copied Successfully </p>
</div>

@error('suggestion')

<script>
    toastr.error('{{$message}}');
</script>
@enderror
<script>
   
function addUniversityLikeDislike(universityId,replyId,type) {
var authUser= '{{auth()->user()}}';
if(authUser){

        $.ajax({
            'type':'post',
            'url':baseurl+'/add-university-like-dislike',
            'data':{
                'universityId':universityId,
                'replyId':replyId,
                'type':type,
            },success:function(response){
                console.log(response);
            }
        });
    }
    else{
        $('#login-signup-popup').modal('show');
        // toastr.error("{{__('Login First')}}");

    }
}
function addUniversityReport(e,universityId,replyId) {
    var authUser= '{{auth()->user()}}';
    if(authUser){
    changeReport(e);
        $.ajax({
            'type':'post',
            'url':baseurl+'/add-university-report',
            'data':{
                'universityId':universityId,
                'replyId':replyId,
            },success:function(response){
                console.log(response);
            }
        });
    }
    else{
        $('#login-signup-popup').modal('show');
        // toastr.error("{{__('Login First')}}");

    }
}
function replyUser(e,uid,id) {
    var authUser= '{{auth()->user()}}';
    if(authUser){
        if($(e).closest('.user-rating-item').find('.view-reply').find('.showreply').css('display')=='none') {
            $(e).closest('.user-rating-item').find('.showreply').show();
            $(e).closest('.user-rating-item').find('.hidereply').hide();
        }else{
            $(e).closest('.user-rating-item').find('.showreply').hide();
            $(e).closest('.user-rating-item').find('.hidereply').show();
        }
        $(e).closest('.user-rating-item').find(".rating-replyed-item-list").slideToggle();
        $(e).closest('.user-rating-item').find(".rating-replyed-item-list").find('textarea').focus();
        $(e).closest('.user-rating-item').find(".rating-replyed-item-list").find('input.id').val(id);
        $(e).closest('.user-rating-item').find(".rating-replyed-item-list").find('textarea').val('');
        $(e).closest('.user-rating-item').find(".rating-replyed-item-list").find('input.uId').val('');
        $(e).closest('.user-rating-item').find(".rating-replyed-item-list").find('.childname').text('');
    }
    else{
        $('#login-signup-popup').modal('show');
        // toastr.error("{{__('Login First')}}");
    }
}
function chatUser(e) {
         var authUser= '{{auth()->user()}}';
    if(authUser){
        window.location.href = $(e).closest('li').find('.chaturl').val();
    }else{
        $('#login-signup-popup').modal('show');

    }
}
function replyChildUser(e,uid,id) {
    $('.crossIcon').css('display','block');
     var authUser= '{{auth()->user()}}';
    if(authUser){
        $(e).closest(".rating-replyed-item-list").find('textarea').focus();
        $.ajax({
            'type':'post',
            'url':baseurl+'/get-child-user-name',
            'data':{
                'id':uid
            },success:function(response){
                console.log('response',response.gender);
                var color = response.gender==1 ? '#005BDF' : '#ED0E69';
                var stringData = '<span style="color:'+color+'">@'+response.systemNickname+'</span>';
                $(e).closest(".rating-replyed-item-list").find('.childname').html(stringData);
            }
        });
        $(e).closest(".rating-replyed-item-list").find('input.uId').val(uid);
        $(e).closest(".rating-replyed-item-list").find('input.id').val(id);
        $(e).closest(".rating-replyed-item-list").find('textarea').val('');
        $(e).closest(".rating-replyed-item-list").find('.childname').text('');
    }
    else{
        $('#login-signup-popup').modal('show');
        // toastr.error("{{__('Login First')}}");
    }
}
$('.universityReview').on('submit',function(e){
    $('.comment-submit-btn').attr('disabled', true); 

    e.preventDefault();
    var authUser= '{{auth()->user()}}';
    if(authUser){
        var form = $(this);
        var url = form.attr('action');
        $.ajax({
            'type':'post',
            'url':url,
            'data':form.serialize(),
            success:function(response){
                $('.comment-submit-btn').attr('disabled', false); 

                result= jQuery.parseJSON(response);
                if(result.status=='error'){
                    toastr.error('Error In Adding Review or min character length be 3');
                }else{
                    // $(form).find('.childname').text('');
                    $(form).find('textarea').val('');
                    $(form).closest(".rating-replyed-item-list").find(".rating_ul_class").append(result.html);
                }
            }
        });
    }
    else{
        $('#login-signup-popup').modal('show');
        // toastr.error("{{__('Login First')}}");

    }
});
function removeReply(e){
    $('.crossIcon').css('display','none');

    $(e).closest(".rating-replyed-item-list").find('input.uId').val('');
    $(e).closest(".rating-replyed-item-list").find('input.id').val($(e).closest(".rating-replyed-item-list").find('input.oldId').val());
    $(e).closest('.user-rating-item').find(".rating-replyed-item-list").find('.childname').text('');
}
</script>
@endsection 