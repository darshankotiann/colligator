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
                                <a href="{{route('admin.home')}}" class="waves-effect">
                                    <i class="ri-dashboard-line"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>
                            <?php 
                            if(Auth::guard('admin')->user()->role==2){ ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-account-circle-line"></i>
                                    <span>Users</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Subadmin'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                                    <li><a href="{{route('admin.subadmin.list')}}">Sub Admin</a></li>
                                    <?php } ?>
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Users'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                                    <li><a href="{{route('admin.user.list')}}">Users</a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                            <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Email'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-mail-send-line"></i>
                                    <span>Email</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="{{route('admin.email.list')}}">List</a></li>
                                </ul>
                            </li>
                                    <?php } ?>
                            <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Cms'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-pages-line"></i>
                                    <span>CMS</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="{{route('admin.cms.list')}}">List</a></li>
                                </ul>
                            </li>
                                    <?php } ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="mdi mdi-school"></i>
                                    <span>Profile Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ProfessorProfile'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                                    <li><a href="{{route('admin.professor.index')}}">Professor</a></li>
                                    <?php } ?>
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'HighSchoolProfile'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                                    <li><a href="{{route('admin.comming_soon')}}">High School</a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                            <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Reviews'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-history-line"></i>
                                    <span>Review Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Reviews</a></li>
                                </ul>
                            </li>
                                    <?php } ?>
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Stories'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-book-mark-line"></i>
                                    <span>Stories Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Stories</a></li>
                                </ul>
                            </li>
                                    <?php } ?>
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'UserReport'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-team-fill"></i>
                                    <span>Users Reported Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">User Report</a></li>
                                </ul>
                            </li>
                                    <?php } ?>
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'ChatRoom'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-chat-1-line"></i>
                                    <span>Chat Room Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Chat Room</a></li>
                                </ul>
                            </li>
                                    <?php } ?>
                                    <?php $permissions= Permissions::where(['subadmin_id'=>Auth::guard('admin')->user()->id,'modal_name'=>'Setting'])->first();
                                    if($permissions['add']==1 ||$permissions['edit']==1 ||$permissions['delete']==1 ){
                                     ?>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-share-line"></i>
                                    <span>Global Setting</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.global_setting.edit')}}">Setting</a></li>
                                    
                                </ul>
                            </li>
                                    <?php } ?>
                            <?php } else{?>
                                <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-account-circle-line"></i>
                                    <span>Users</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="{{route('admin.subadmin.list')}}">Sub Admin</a></li>
                                    <li><a href="{{route('admin.user.list')}}">Users</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-mail-send-line"></i>
                                    <span>Email</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="{{route('admin.email.list')}}">List</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-pages-line"></i>
                                    <span>CMS</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="{{route('admin.cms.list')}}">List</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="mdi mdi-school"></i>
                                    <span>Tables Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.country.index')}}">Country</a></li>
                                        <li><a href="{{route('admin.university.index')}}">University</a></li>
                                    
                                    <li><a href="{{route('admin.college.index')}}">College</a></li>
                                    <li><a href="{{route('admin.school.index')}}">School</a></li>
                                    <li><a href="{{route('admin.subject.index')}}">Subject</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="mdi mdi-school"></i>
                                    <span>Profile Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.professor.index')}}">Professor</a></li>
                                    <li><a href="{{route('admin.teacher.index')}}">High School</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-history-line"></i>
                                    <span>Review Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Reviews</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-book-mark-line"></i>
                                    <span>Stories Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Stories</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-team-fill"></i>
                                    <span>Users Reported Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">User Report</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-chat-1-line"></i>
                                    <span>Chat Room Management</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.comming_soon')}}">Chat Room</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-share-line"></i>
                                    <span>Global Setting</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li><a href="{{route('admin.global_setting.edit')}}">Setting</a></li>
                                    
                                </ul>
                            </li>
                                <?php } ?>
                            {{--<li>
                                <a href="calendar.html" class=" waves-effect">
                                    <i class="ri-calendar-2-line"></i>
                                    <span>Calendar</span>
                                </a>
                            </li>

                            <li>
                                <a href="apps-chat.html" class=" waves-effect">
                                    <i class="ri-chat-1-line"></i>
                                    <span>Chat</span>
                                </a>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-store-2-line"></i>
                                    <span>Ecommerce</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="ecommerce-products.html">Products</a></li>
                                    <li><a href="ecommerce-product-detail.html">Product Detail</a></li>
                                    <li><a href="ecommerce-orders.html">Orders</a></li>
                                    <li><a href="ecommerce-customers.html">Customers</a></li>
                                    <li><a href="ecommerce-cart.html">Cart</a></li>
                                    <li><a href="ecommerce-checkout.html">Checkout</a></li>
                                    <li><a href="ecommerce-shops.html">Shops</a></li>
                                    <li><a href="ecommerce-add-product.html">Add Product</a></li>
                                </ul>
                            </li>
                

                            <li>
                                <a href="apps-kanban-board.html" class=" waves-effect">
                                    <i class="ri-artboard-2-line"></i>
                                    <span>Kanban Board</span>
                                </a>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-layout-3-line"></i>
                                    <span>Layouts</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="layouts-horizontal.html">Horizontal</a></li>
                                    <li><a href="layouts-light-sidebar.html">Light Sidebar</a></li>
                                    <li><a href="layouts-compact-sidebar.html">Compact Sidebar</a></li>
                                    <li><a href="layouts-icon-sidebar.html">Icon Sidebar</a></li>
                                    <li><a href="layouts-boxed.html">Boxed Layout</a></li>
                                    <li><a href="layouts-preloader.html">Preloader</a></li>
                                </ul>
                            </li>

                            <li class="menu-title">Pages</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-account-circle-line"></i>
                                    <span>Authentication</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="auth-login.html">Login</a></li>
                                    <li><a href="auth-register.html">Register</a></li>
                                    <li><a href="auth-recoverpw.html">Recover Password</a></li>
                                    <li><a href="auth-lock-screen.html">Lock Screen</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-profile-line"></i>
                                    <span>Utility</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="pages-starter.html">Starter Page</a></li>
                                    <li><a href="pages-maintenance.html">Maintenance</a></li>
                                    <li><a href="pages-comingsoon.html">Coming Soon</a></li>
                                    <li><a href="pages-timeline.html">Timeline</a></li>
                                    <li><a href="pages-faqs.html">FAQs</a></li>
                                    <li><a href="pages-pricing.html">Pricing</a></li>
                                    <li><a href="pages-404.html">Error 404</a></li>
                                    <li><a href="pages-500.html">Error 500</a></li>
                                </ul>
                            </li>

                            <li class="menu-title">Components</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-pencil-ruler-2-line"></i>
                                    <span>UI Elements</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="ui-alerts.html">Alerts</a></li>
                                    <li><a href="ui-buttons.html">Buttons</a></li>
                                    <li><a href="ui-cards.html">Cards</a></li>
                                    <li><a href="ui-carousel.html">Carousel</a></li>
                                    <li><a href="ui-dropdowns.html">Dropdowns</a></li>
                                    <li><a href="ui-grid.html">Grid</a></li>
                                    <li><a href="ui-images.html">Images</a></li>
                                    <li><a href="ui-lightbox.html">Lightbox</a></li>
                                    <li><a href="ui-modals.html">Modals</a></li>
                                    <li><a href="ui-rangeslider.html">Range Slider</a></li>
                                    <li><a href="ui-roundslider.html">Round Slider</a></li>
                                    <li><a href="ui-session-timeout.html">Session Timeout</a></li>
                                    <li><a href="ui-progressbars.html">Progress Bars</a></li>
                                    <li><a href="ui-sweet-alert.html">Sweet Alerts</a></li>
                                    <li><a href="ui-tabs-accordions.html">Tabs & Accordions</a></li>
                                    <li><a href="ui-typography.html">Typography</a></li>
                                    <li><a href="ui-video.html">Video</a></li>
                                    <li><a href="ui-general.html">General</a></li>
                                    <li><a href="ui-rating.html">Rating</a></li>
                                    <li><a href="ui-notifications.html">Notifications</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="waves-effect">
                                    <i class="ri-eraser-fill"></i>
                                    <span class="badge badge-pill badge-danger float-right">6</span>
                                    <span>Forms</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="form-elements.html">Elements</a></li>
                                    <li><a href="form-validation.html">Validation</a></li>
                                    <li><a href="form-advanced.html">Advanced Plugins</a></li>
                                    <li><a href="form-editors.html">Editors</a></li>
                                    <li><a href="form-uploads.html">File Upload</a></li>
                                    <li><a href="form-xeditable.html">X-editable</a></li>
                                    <li><a href="form-wizard.html">Wizard</a></li>
                                    <li><a href="form-mask.html">Mask</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-table-2"></i>
                                    <span>Tables</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="tables-basic.html">Basic Tables</a></li>
                                    <li><a href="tables-datatable.html">Data Tables</a></li>
                                    <li><a href="tables-responsive.html">Responsive Table</a></li>
                                    <li><a href="tables-editable.html">Editable Table</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-bar-chart-line"></i>
                                    <span>Charts</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="charts-apex.html">Apexcharts</a></li>
                                    <li><a href="charts-chartjs.html">Chartjs</a></li>
                                    <li><a href="charts-flot.html">Flot</a></li>
                                    <li><a href="charts-knob.html">Jquery Knob</a></li>
                                    <li><a href="charts-sparkline.html">Sparkline</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-brush-line"></i>
                                    <span>Icons</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="icons-remix.html">Remix Icons</a></li>
                                    <li><a href="icons-materialdesign.html">Material Design</a></li>
                                    <li><a href="icons-dripicons.html">Dripicons</a></li>
                                    <li><a href="icons-fontawesome.html">Font awesome 5</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="ri-map-pin-line"></i>
                                    <span>Maps</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="maps-google.html">Google Maps</a></li>
                                    <li><a href="maps-vector.html">Vector Maps</a></li>
                                </ul>
                            </li>--}}

                            

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>