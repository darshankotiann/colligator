 <div class="vertical-menu">
     <?php
     
     use Illuminate\Support\Facades\Auth;
     use App\Permissions;
     ?>
     <div data-simplebar class="h-100">

         <!--- Sidemenu -->
         <div id="sidebar-menu">
             <!-- Left Menu Start -->
             <ul class="metismenu list-unstyled" id="side-menu">
                 <li class="menu-title">Menu</li>

                 <li>
                     <a href="{{ route('admin.home') }}" class="waves-effect">
                         <i class="ri-dashboard-line"></i>
                         <span>Dashboard</span>
                     </a>
                 </li>
                 <?php 
                            if(Auth::guard('admin')->user()->role==2){ ?>
                 <li
                     class="{{ Request::segment(2) == 'sub-admin' || Request::segment(2) == 'users' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-account-circle-line"></i>
                         <span>Users</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 )){
                                     ?>
                         <li class="{{ Request::segment(2) == 'sub-admin' ? 'mm-active' : '' }} ">
                             <a class="{{ Request::segment(2) == 'sub-admin' ? 'active' : '' }} "
                                 href="{{ route('admin.subadmin.list') }}">Sub Admin</a>
                         </li>

                         <?php } ?>
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Users'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                         <li class="{{ Request::segment(2) == 'users' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'users' ? 'active' : '' }} "
                                 href="{{ route('admin.user.list') }}">Users</a></li>
                         <?php } ?>
                     </ul>
                 </li>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Email'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                 <li class="{{ Request::segment(2) == 'email-template' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Email</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.email.list') }}">List</a></li>
                     </ul>
                 </li>
                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Cms'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 )){
                                     ?>
                 <li
                     class="{{ Request::segment(2) == 'cms-list' || Request::segment(2) == 'cms-edit' || Request::segment(2) == 'about-us' || Request::segment(2) == 'contact-us' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-pages-line"></i>
                         <span>CMS</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.cms.list') }}">List</a></li>
                         <li><a href="{{ route('admin.cms.edit_aboutUs') }}">About Us</a></li>
                         <li><a href="{{ route('admin.cms.edit_contactUs') }}">Contact Us</a></li>
                     </ul>
                 </li>
                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Faqs'])->first();
                                if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                 <li class="{{ Request::segment(2) == 'faq' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="mdi mdi-school"></i>
                         <span>Faq Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.faq.index') }}">List</a></li>
                     </ul>
                 </li>
                 <?php } ?>

                 <li
                     class="{{ Request::segment(2) == 'university' || Request::segment(2) == 'college' || Request::segment(2) == 'school' || Request::segment(2) == 'subject' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="mdi mdi-school"></i>
                         <span>Tables Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Country'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                         <li><a href="{{ route('admin.country.index') }}">Country</a></li>
                         <?php } ?>
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'University'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                         <li class="{{ Request::segment(2) == 'university' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'college' ? 'active' : '' }} "
                                 href="{{ route('admin.university.index') }}">University</a></li>
                         <?php } ?>
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'College'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                         <li class="{{ Request::segment(2) == 'college' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'college' ? 'active' : '' }} "
                                 href="{{ route('admin.college.index') }}">College</a></li>

                         <?php } ?>
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'School'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 )){
                                     ?>
                         <li class="{{ Request::segment(2) == 'school' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'school' ? 'active' : '' }} "
                                 href="{{ route('admin.school.index') }}">School</a></li>

                         <?php } ?>
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subject'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 )){
                                     ?>
                         <li class="{{ Request::segment(2) == 'subject' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'subject' ? 'active' : '' }} "
                                 href="{{ route('admin.subject.index') }}">Subject</a></li>
                         <?php } ?>
                     </ul>
                 </li>
                 <li
                     class="{{ Request::segment(2) == 'professor' || Request::segment(2) == 'teacher' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="mdi mdi-school"></i>
                         <span>Profile Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                         <li class="{{ Request::segment(2) == 'professor' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'professor' ? 'active' : '' }}"
                                 href="{{ route('admin.professor.index') }}">Professor</a></li>
                         <li class="{{ Request::segment(2) == 'user-professor' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'user-professor' ? 'active' : '' }}"
                                 href="{{ route('admin.userprofessor') }}">User Created Professor</a></li>

                         <?php } ?>
                         <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'HighSchoolProfile'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                         <li class="{{ Request::segment(2) == 'teacher' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'teacher' ? 'active' : '' }}"
                                 href="{{ route('admin.teacher.index') }}">High School</a></li>

                         <li class="{{ Request::segment(2) == 'user-teacher' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'user-teacher' ? 'active' : '' }}"
                                 href="{{ route('admin.userteacher') }}">User Created High School</a></li>
                         <?php } ?>
                     </ul>
                 </li>

                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Banner'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                 <li class="{{ Request::segment(2) == 'banner-list' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="mdi mdi-school"></i>
                         <span>Banner Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">

                         <li><a href="{{ route('admin.banner.index') }}">List</a></li>
                     </ul>
                 </li>
                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'AbuseWord'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 )){
                                     ?>
                 <li class="{{ Request::segment(2) == 'abuse_words' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Abuse Word Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.abuse-words.index') }}">List</a></li>
                         <li><a href="{{ route('admin.abuse-words.professorlist') }}">Abusive Track</a></li>
                     </ul>
                 </li>

                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Testimonial'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>

                 <li class="{{ Request::segment(2) == 'testimonial' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Testimonials</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.testimonial.index') }}">List</a></li>
                     </ul>
                 </li>

                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Slider'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1)){
                                     ?>
                 <li class="{{ Request::segment(2) == 'slider' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Front Sliders</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.slider.index') }}">List</a></li>
                     </ul>
                 </li>

                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Reviews'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>

                 <li
                     class="{{ Request::segment(2) == 'professor-review' ||Request::segment(2) == 'teacher-review' ||Request::segment(2) == 'professor-review-edit' ||Request::segment(2) == 'professor-review-view' ||Request::segment(2) == 'teacher-review-edit' ||Request::segment(2) == 'teacher-review-view' ||Request::segment(2) == 'university-review' ||Request::segment(2) == 'university-review-edit' ||Request::segment(2) == 'university-review-view' ||Request::segment(2) == 'teacher-profile-corrections' ||Request::segment(2) == 'view-teacher-profile-corrections' ||Request::segment(2) == 'professor-profile-corrections' ||Request::segment(2) == 'view-professor-profile-corrections' ||Request::segment(2) == 'university-profile-corrections' ||Request::segment(2) == 'view-university-profile-corrections' ||Request::segment(2) == 'report-spam' ||Request::segment(2) == 'teacher-review-edit' ||Request::segment(2) == 'teacher-review-view' ||Request::segment(2) == 'professor-review-edit' ||Request::segment(2) == 'professor-review-view' ||Request::segment(2) == 'university-review-edit'? 'mm-active': '' }}">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-history-line"></i>
                         <span>Review Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>All Reviews</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.professorreview') }}">Professor Review</a></li>
                                 <li><a href="{{ route('admin.teacherreview') }}">Teacher Review</a></li>
                                 <li><a href="{{ route('admin.universityreview') }}">University Review</a></li>
                             </ul>

                         </li>
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>Profile Corrections</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.profile_corrections.teacherList') }}">Corrections</a>
                                 </li>
                                 <!-- <li><a href="{{ route('admin.profile_corrections.professorList') }}">Professor Corrections</a></li>
                                            <li><a href="{{ route('admin.profile_corrections.universityList') }}">University Corrections</a></li> -->
                             </ul>
                         </li>
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>Review Report/Spam</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.report_spam.teacherList') }}">Teacher Review
                                         Report/Spam</a></li>
                                 <li><a href="{{ route('admin.report_spam.professorList') }}">Professor Review
                                         Report/Spam</a></li>
                                 <li><a href="{{ route('admin.report_spam.universityList') }}">University Review
                                         Report/Spam</a></li>
                                 <!-- <li><a href="{{ route('admin.report_spam.stories.list') }}">Stories Report/Spam</a></li> -->
                             </ul>
                         </li>
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>Comment Report/Spam</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.report_spam.teacherCommentList') }}">Teacher comment
                                         Report/Spam</a></li>
                                 <li><a href="{{ route('admin.report_spam.professorCommentList') }}">Professor comment
                                         Report/Spam</a></li>
                                 <li><a href="{{ route('admin.report_spam.universityCommentList') }}">University
                                         comment Report/Spam</a></li>
                             </ul>
                         </li>
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>Review/Comment Report/Spam</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.all_report_spam_track') }}">List Report/Spam</a></li>
                             </ul>
                         </li>

                     </ul>
                 </li>
                 <?php } ?>
                 <?php
                 // $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Stories'])->first();
                 // if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                 ?>
                 <!-- <li>
                                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                                        <i class="ri-book-mark-line"></i>
                                        <span>Stories Management</span>
                                    </a>
                                    <ul class="sub-menu" aria-expanded="true">
                                        <li><a href="{{ route('admin.story.list') }}">Stories</a></li>
                                    </ul>
                                </li> -->
                 <?php
                 //  }
                 ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ReportStatics'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-team-fill"></i>
                         <span>REPORTS & STATICS</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.user_statics') }}">User Statics</a></li>
                         <li><a href="{{ route('admin.professor_statics') }}">Professor Statics</a></li>
                         <li><a href="{{ route('admin.teacher_statics') }}">Teacher Statics</a></li>
                         <li><a href="{{ route('admin.university_statics') }}">University Statics</a></li>
                     </ul>
                 </li>
                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ChatRoom'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1)){
                                     ?>
                 <!-- <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-chat-1-line"></i>
                                    <span>Chat Room Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{ route('admin.comming_soon') }}">Chat Room</a></li>
                                </ul>
                            </li> -->
                 <?php } ?>
                 <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Setting'])->first();
                                    if($permissions && ($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1) ){
                                     ?>
                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-share-line"></i>
                         <span>Global Setting</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.global_setting.edit') }}">Setting</a></li>

                     </ul>
                 </li>
                 <?php } ?>
                 <?php } else{?>
                 <li
                     class="{{ Request::segment(2) == 'sub-admin' || Request::segment(2) == 'users' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-account-circle-line"></i>
                         <span>Users</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li class="{{ Request::segment(2) == 'sub-admin' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'sub-admin' ? 'active' : '' }} "
                                 href="{{ route('admin.subadmin.list') }}">Sub Admin</a></li>
                         <li class="{{ Request::segment(2) == 'users' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'users' ? 'active' : '' }} "
                                 href="{{ route('admin.user.list') }}">Users</a></li>
                     </ul>
                 </li>

                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-share-line"></i>
                         <span>Customer Contact</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.customer_contact') }}">List</a></li>
                     </ul>
                 </li>
                 <li class="{{ Request::segment(2) == 'email-template' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Email</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.email.list') }}">List</a></li>
                     </ul>
                 </li>
                 <li
                     class="{{ Request::segment(2) == 'cms-list' || Request::segment(2) == 'cms-edit' || Request::segment(2) == 'about-us' || Request::segment(2) == 'contact-us' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-pages-line"></i>
                         <span>CMS</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.cms.list') }}">List</a></li>
                         <li><a href="{{ route('admin.cms.edit_aboutUs') }}">About Us</a></li>
                         <li><a href="{{ route('admin.cms.edit_contactUs') }}">Contact Us</a></li>
                     </ul>
                 </li>
                 <li class="{{ Request::segment(2) == 'faq' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Faq Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.faq.index') }}">List</a></li>
                     </ul>
                 </li>
                 <li
                     class="{{ Request::segment(2) == 'university' || Request::segment(2) == 'college' || Request::segment(2) == 'school' || Request::segment(2) == 'subject' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="mdi mdi-school"></i>
                         <span>Tables Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.country.index') }}">Country</a></li>
                         <li class="{{ Request::segment(2) == 'university' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'college' ? 'active' : '' }} "
                                 href="{{ route('admin.university.index') }}">University</a></li>

                         <li class="{{ Request::segment(2) == 'college' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'college' ? 'active' : '' }} "
                                 href="{{ route('admin.college.index') }}">College</a></li>
                         <li class="{{ Request::segment(2) == 'school' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'school' ? 'active' : '' }} "
                                 href="{{ route('admin.school.index') }}">School</a></li>
                         <li class="{{ Request::segment(2) == 'subject' ? 'mm-active' : '' }} "><a
                                 class="{{ Request::segment(2) == 'subject' ? 'active' : '' }} "
                                 href="{{ route('admin.subject.index') }}">Subject</a></li>
                     </ul>
                 </li>
                 <li
                     class="{{ Request::segment(2) == 'professor' || Request::segment(2) == 'teacher' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="mdi mdi-school"></i>
                         <span>Profile Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li class="{{ Request::segment(2) == 'professor' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'professor' ? 'active' : '' }}"
                                 href="{{ route('admin.professor.index') }}">Professor</a></li>
                         <li class="{{ Request::segment(2) == 'user-professor' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'user-professor' ? 'active' : '' }}"
                                 href="{{ route('admin.userprofessor') }}">User Created Professor</a></li>
                         <li class="{{ Request::segment(2) == 'teacher' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'teacher' ? 'active' : '' }}"
                                 href="{{ route('admin.teacher.index') }}">High School</a></li>
                         <li class="{{ Request::segment(2) == 'user-teacher' ? 'mm-active' : '' }}"><a
                                 class="{{ Request::segment(2) == 'user-teacher' ? 'active' : '' }}"
                                 href="{{ route('admin.userteacher') }}">User Created High School</a></li>
                     </ul>
                 </li>
                 <li class="{{ Request::segment(2) == 'banner-list' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Banner Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.banner.index') }}">List</a></li>
                     </ul>
                 </li>
                 <li class="{{ Request::segment(2) == 'abuse_words' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Abuse Word Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.abuse-words.index') }}">List</a></li>
                         <li><a href="{{ route('admin.abuse-words.professorlist') }}">Abusive Track</a></li>
                         {{-- <li><a href="{{route('admin.abuse-words.universitylist')}}">University List</a></li>
                                    <li><a href="{{route('admin.abuse-words.teacherlist')}}">Teacher List</a></li> --}}
                     </ul>
                 </li>
                 <li class="{{ Request::segment(2) == 'testimonial-list' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Testimonials</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.testimonial.index') }}">List</a></li>
                     </ul>
                 </li>
                 <li class="{{ Request::segment(2) == 'slider' ? 'mm-active' : '' }} ">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-mail-send-line"></i>
                         <span>Front Sliders</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="false">
                         <li><a href="{{ route('admin.slider.index') }}">List</a></li>
                     </ul>
                 </li>
                 <li
                     class="{{ Request::segment(2) == 'professor-review' ||Request::segment(2) == 'teacher-review' ||Request::segment(2) == 'professor-review-edit' ||Request::segment(2) == 'professor-review-view' ||Request::segment(2) == 'teacher-review-edit' ||Request::segment(2) == 'teacher-review-view' ||Request::segment(2) == 'university-review' ||Request::segment(2) == 'university-review-edit' ||Request::segment(2) == 'university-review-view' ||Request::segment(2) == 'teacher-profile-corrections' ||Request::segment(2) == 'view-teacher-profile-corrections' ||Request::segment(2) == 'professor-profile-corrections' ||Request::segment(2) == 'view-professor-profile-corrections' ||Request::segment(2) == 'university-profile-corrections' ||Request::segment(2) == 'view-university-profile-corrections' ||Request::segment(2) == 'report-spam' ||Request::segment(2) == 'teacher-review-edit' ||Request::segment(2) == 'teacher-review-view' ||Request::segment(2) == 'professor-review-edit' ||Request::segment(2) == 'professor-review-view' ||Request::segment(2) == 'university-review-edit'? 'mm-active': '' }}">
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-history-line"></i>
                         <span>Review Management</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>All Reviews</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.professorreview') }}">Professor Review</a></li>
                                 <li><a href="{{ route('admin.teacherreview') }}">Teacher Review</a></li>
                                 <li><a href="{{ route('admin.universityreview') }}">University Review</a></li>
                             </ul>

                         </li>
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>Profile Corrections</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.profile_corrections.teacherList') }}">Corrections</a>
                                 </li>
                                 {{-- <li><a href="{{route('admin.profile_corrections.professorList')}}">Professor Corrections</a></li>
                                            <li><a href="{{route('admin.profile_corrections.universityList')}}">University Corrections</a></li> --}}
                             </ul>
                         </li>
                         <!-- <li>
                                        <a href="javascript: void(0);" class="has-arrow waves-effect">
                                            <i class="ri-mail-send-line"></i>
                                            <span>Review Report/Spam</span>
                                        </a>
                                        <ul class="sub-menu" aria-expanded="false">
                                            <li><a href="{{ route('admin.report_spam.teacherList') }}">Teacher Review Report/Spam</a></li>
                                            <li><a href="{{ route('admin.report_spam.professorList') }}">Professor Review Report/Spam</a></li>
                                            <li><a href="{{ route('admin.report_spam.universityList') }}">University Review Report/Spam</a></li>
                                            <li><a href="{{ route('admin.report_spam.stories.list') }}">Stories Report/Spam</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript: void(0);" class="has-arrow waves-effect">
                                            <i class="ri-mail-send-line"></i>
                                            <span>Comment Report/Spam</span>
                                        </a>
                                        <ul class="sub-menu" aria-expanded="false">
                                            <li><a href="{{ route('admin.report_spam.teacherCommentList') }}">Teacher comment Report/Spam</a></li>
                                            <li><a href="{{ route('admin.report_spam.professorCommentList') }}">Professor comment Report/Spam</a></li>
                                            <li><a href="{{ route('admin.report_spam.universityCommentList') }}">University comment Report/Spam</a></li>
                                        </ul>
                                    </li> -->
                         <li>
                             <a href="javascript: void(0);" class="has-arrow waves-effect">
                                 <i class="ri-mail-send-line"></i>
                                 <span>Review/Comment Report/Spam</span>
                             </a>
                             <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="{{ route('admin.all_report_spam_track') }}">List Report/Spam</a></li>
                             </ul>
                         </li>
                     </ul>
                 </li>

                 {{-- <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-book-mark-line"></i>
                                    <span>Stories Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.story.list')}}">Stories</a></li>
                                </ul>
                            </li> --}}
                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-team-fill"></i>
                         <span>REPORTS & STATICS</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.user_statics') }}">User Statics</a></li>
                         <li><a href="{{ route('admin.professor_statics') }}">Professor Statics</a></li>
                         <li><a href="{{ route('admin.teacher_statics') }}">Teacher Statics</a></li>
                         <li><a href="{{ route('admin.university_statics') }}">University Statics</a></li>
                     </ul>
                 </li>
                 {{-- <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-chat-1-line"></i>
                                    <span>Chat Room Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Chat Room</a></li>
                                </ul>
                            </li> --}}
                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-share-line"></i>
                         <span>Push Notification</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.push_notification_list') }}">User List</a></li>
                     </ul>
                 </li>
                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-share-line"></i>
                         <span>Comments Track</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.comments_track') }}">List</a></li>
                     </ul>
                 </li>
                 <li>
                     <a href="javascript: void(0);" class="has-arrow waves-effect">
                         <i class="ri-share-line"></i>
                         <span>Global Setting</span>
                     </a>
                     <ul class="sub-menu" aria-expanded="true">
                         <li><a href="{{ route('admin.global_setting.edit') }}">Setting</a></li>
                         <li><a href="{{ route('backup') }}">Backup</a></li>
                     </ul>
                 </li>
                 <?php } ?>
             </ul>
         </div>
         <!-- Sidebar -->
     </div>
 </div>
