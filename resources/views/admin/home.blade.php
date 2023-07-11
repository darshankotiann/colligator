@extends('layouts.app')

@section('content')
                <div class="page-content">
                    <div class="container-fluid">

                    <div class="row">
                            <div class="col-xl-8">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body overflow-hidden">
                                                        <p class="text-truncate font-size-14 mb-2">Number of Professors</p>
                                                        <h4 class="mb-0">{{$ProfessorProfileCount}}</h4>
                                                    </div>
                                                    <div class="text-primary">
                                                        <i class="ri-stack-line font-size-24"></i>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card-body border-top py-3">
                                                <div class="text-truncate row">
                                                    <a href="{{route('admin.professor.index')}}"> <span class="text-right badge badge-soft-success font-size-11"><i class="mdi mdi-menu-up"> </i> View All </span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body overflow-hidden">
                                                        <p class="text-truncate font-size-14 mb-2">Number Of Teachers</p>
                                                        <h4 class="mb-0">{{$TeacherProfileCount}}</h4>
                                                    </div>
                                                    <div class="text-primary">
                                                        <i class="ri-store-2-line font-size-24"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body border-top py-3">
                                                <div class="text-truncate row">
                                                    <a href="{{route('admin.teacher.index')}}"> <span class="text-right badge badge-soft-success font-size-11"><i class="mdi mdi-menu-up"> </i> View All </span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body overflow-hidden">
                                                        <p class="text-truncate font-size-14 mb-2">Number Of University</p>
                                                        <h4 class="mb-0">{{$UniversityCount}}</h4>
                                                    </div>
                                                    <div class="text-primary">
                                                        <i class="ri-briefcase-4-line font-size-24"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body border-top py-3">
                                                <div class="text-truncate row">
                                                    <a href="{{route('admin.university.index')}}"> <span class="text-right badge badge-soft-success font-size-11"><i class="mdi mdi-menu-up"> </i> View All </span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-right d-none d-md-inline-block">
                                            <!-- <div class="btn-group mb-2">
                                                <button type="button" class="btn btn-sm btn-light">Today</button>
                                                <button type="button" class="btn btn-sm btn-light active">Weekly</button>
                                                <button type="button" class="btn btn-sm btn-light">Monthly</button>
                                            </div> -->
                                        </div>
                                        <h4 class="card-title mb-4">Users/SubAdmin Count</h4>
                                        <div>
                                            <div id="line-column-charts" class="apex-charts" dir="ltr"></div>
                                        </div>
                                    </div>

                                    <div class="card-body border-top text-center">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="d-inline-flex">
                                                    <h5 class="mr-2">{{$currentMonth}} new users</h5>
                                                    <div class="text-success">

                                                    </div>
                                                </div>
                                                <p class="text-muted text-truncate mb-0">This month</p>
                                            </div>

                                            <div class="col-sm-3">
                                                <div class="mt-4 mt-sm-0">
                                                    <p class="mb-2 text-muted text-truncate"><i class="mdi mdi-circle text-primary font-size-10 mr-1"></i> Total Users :</p>
                                                    <div class="d-inline-flex">
                                                        <h5 class="mb-0 mr-2">{{$UserCount}} Users</h5>
                                                        <div class="text-success">
<!--                                                             <i class="mdi mdi-menu-up font-size-14"> </i>2.1 % -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mt-4 mt-sm-0">
                                                    <p class="mb-2 text-muted text-truncate"><i class="mdi mdi-circle text-success font-size-10 mr-1"></i> Total Subadmin :</p>
                                                    <div class="d-inline-flex">
                                                        <h5 class="mb-0">{{$adminCount}}</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="mt-4 mt-sm-0">
                                                    <p class="mb-2 text-muted text-truncate"><i class="mdi mdi-circle text-success font-size-10 mr-1"></i> New Subadmin :</p>
                                                    <div class="d-inline-flex">
                                                        <h5 class="mb-0">{{$currentMonthAdmin}}</h5>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-right">
                                           <!--  <select class="custom-select custom-select-sm">
                                                <option selected>Apr</option>
                                                <option value="1">Mar</option>
                                                <option value="2">Feb</option>
                                                <option value="3">Jan</option>
                                            </select> -->
                                        </div>
                                        <h4 class="card-title mb-4">Review Analytics</h4>

                                        <div id="donut-charts" class="apex-charts"></div>

                                        <div class="row">
                                            <div class="col-4">
                                                <div class="text-center mt-4">
                                                    <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-primary font-size-10 mr-1"></i> Teacher Review</p>
                                                    <h5>{{number_format(($teacherCount/3)*10,2)}} %</h5>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="text-center mt-4">
                                                    <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-success font-size-10 mr-1"></i> Professor Review</p>
                                                    <h5>{{number_format(($professorCount/3)*10,2)}} %</h5>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="text-center mt-4">
                                                    <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-warning font-size-10 mr-1"></i> University Review</p>
                                                    <h5>{{number_format(($universityCount/3)*10,2)}} %</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                             <!--    <div class="card">
                                    <div class="card-body">
                                        <div class="dropdown float-right">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="javascript:void(0);" class="dropdown-item">Sales Report</a>
                                                <a href="javascript:void(0);" class="dropdown-item">Export Report</a>
                                                <a href="javascript:void(0);" class="dropdown-item">Profit</a>
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                            </div>
                                        </div>

                                        <h4 class="card-title mb-4">Earning Reports</h4>
                                        <div class="text-center">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div>
                                                        <div class="mb-3">
                                                            <div id="radialchart-1" class="apex-charts"></div>
                                                        </div>

                                                        <p class="text-muted text-truncate mb-2">Weekly Earnings</p>
                                                        <h5 class="mb-0">$2,523</h5>
                                                    </div>
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="mt-5 mt-sm-0">
                                                        <div class="mb-3">
                                                            <div id="radialchart-2" class="apex-charts"></div>
                                                        </div>

                                                        <p class="text-muted text-truncate mb-2">Monthly Earnings</p>
                                                        <h5 class="mb-0">$11,235</h5>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div> -->
                            </div>
                        </div>

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
<script type="text/javascript">
    $(document).ready(function(){


@if(Session::has('status'))
  toastr.options =
  {
    "closeButton" : true,
    "progressBar" : true,
    "positionClass": "toast-middle-center",

  }
        toastr.success("{{ session('status') }}");
  @endif
    });
  $(document).ready(function(){
    var userData= '<?= $userData ?>';
    var adminData= '<?= $adminData ?>';

userData= JSON.parse(userData);
adminData= JSON.parse(adminData);
var d = new Date();
var n = d.getFullYear();
// console.log(Object.keys(JSON.parse(userData)));
// console.log(Object.values(JSON.parse(userData)));
    // userData= userData.replace('[','');
    // userData=userData.replace(']','');
    // userData= userData.split(',');

//  for user subadmin bar graph
       var options = {
        series: [

            { name: n, type: "column", data: userData },
            { name: n, type: "line", data: adminData },
        ],
        chart: { height: 280, type: "line", toolbar: { show: !1 } },
        stroke: { width: [0, 3], curve: "smooth" },
        plotOptions: { bar: { horizontal: !1, columnWidth: "20%" } },
        dataLabels: { enabled: !1 },
        legend: { show: !1 },
        colors: ["#5664d2", "#1cbb8c"],
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
    },
    chart = new ApexCharts(document.querySelector("#line-column-charts"), options);

// for professor teacher and university count data 
var teacher= parseInt("<?= number_format(($teacherCount/3)*10) ?>");
var professor= parseInt("<?= number_format(($professorCount/3)*10) ?>");
var university= parseInt("<?= number_format(($universityCount/3)*10) ?>");
chart.render();
  options = {
    series: [teacher, professor, university],
    chart: { height: 230, type: "donut" },
    labels: ["Teacher","Professor", "University"],
    plotOptions: { pie: { donut: { size: "80%" } } },
    dataLabels: { enabled: !1 },
    legend: { show: !1 },
    colors: ["#5664d2", "#1cbb8c", "#eeb902"],
};
(chart = new ApexCharts(document.querySelector("#donut-charts"), options)).render();
    });
</script>
                
@endsection
<script type="text/javascript">

</script>