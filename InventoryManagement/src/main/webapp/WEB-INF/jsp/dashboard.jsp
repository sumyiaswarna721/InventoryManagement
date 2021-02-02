<jsp:include page="/WEB-INF/jsp/common/dashboard/header.jsp" />

<div class="main-panel">
    <div class="content">
        <div class="container-fluid">
            <h4 class="page-title"><center> Inventory Management Software</center></h4>
            <div class="row">
                <div class="col-md-3" >
                    <div class="card card-stats " >
                        <div class="card-body " style="background-color: #eacf7d" >
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-users"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Sales Amount</h5></p>
<!--                                        <h4 class="card-title">1,294</h4>-->
                                              <h5 id="total" class="mr-2 text-black">${map.total}</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats ">
                        <div class="card-body" style="background-color: #FFFFCC">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-bar-chart"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Purchase Amount</h5></p>
                                         <h5 id="total1" class="mr-2 text-black">${map.total1}</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats ">
                        <div class="card-body" style="background-color: #d8cbcf" >
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-newspaper-o"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Profit Amount</h5></p>
                                      <h5 id="cprofit" class="mr-2 text-black">1716000</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats ">
                        <div class="card-body "  style="background-color: #ECE5B6  ">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-check-circle"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Today Receive Order</h5></p>
                                        <h4 class="card-title"class="mr-2 text-black">5</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">

                    <div class="card card-stats">
                        <div class="card-body "  style="background-color:#abdde5">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center icon-warning">
                                        <i class="la la-pie-chart text-warning"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Today Expenses</h5></p>
                                        <h3 class="card-title" class="mr-2 text-black">609</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats">
                        <div class="card-body "  style="background-color: #f8d7da">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-bar-chart text-success"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Today Balance</h5></p>
                                        <h3 class="card-title" class="mr-2 text-black">529000</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                    <div class="card card-stats">
                        <div class="card-body "  style="background-color: #FFFFCC">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-bar-chart text-success"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Total Vendor</h5></p>
                                        <h3 class="card-title"class="mr-2 text-black">5</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card card-stats">
                        <div class="card-body"  style="background-color: #e4b9c0">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-heart-o text-primary"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category"><h5>Total Customers</h5></p>
                                        <h3 class="card-title"class="mr-2 text-black">9</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="row">
                <div class="col-md-3" >
                    <div class="card" style="background-color: #e4b9c0">
                        <div class="card-header">
                            <h4 class="card-title">Task</h4>
                            <p class="card-category">Complete</p>
                        </div>
                        <div class="card-body">
                            <div id="task-complete" class="chart-circle mt-4 mb-3"></div>
                        </div>
                        <div class="card-footer">
                            <div class="legend"><i class="la la-circle text-primary"></i> Completed</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                   <div class="container-fluid">
                                <div class="map-responsive">
                                    <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=Eiffel+Tower+Paris+France" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                            </div>
                </div>
            </div>
            <div class="row row-card-no-pd">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="fw-bold mt-1">My Balance</p>
                            <h4><b>48000</b></h4>
                            <a href="#" class="btn btn-primary btn-full text-left mt-3 mb-3"><i class="la la-plus"></i> Add Balance</a>
                        </div>
                        <div class="card-footer">
                            <ul class="nav">
                                <li class="nav-item"><a class="btn btn-default btn-link" href="#"><i class="la la-history"></i> History</a></li>
                                <li class="nav-item ml-auto"><a class="btn btn-default btn-link" href="#"><i class="la la-refresh"></i> Refresh</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <div class="progress-card">
                                <div class="d-flex justify-content-between mb-1">
                                    <span class="text-muted">Profit</span>
                                    <span class="text-muted fw-bold"> 60%</span>
                                </div>
                                <div class="progress mb-2" style="height: 7px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="78%"></div>
                                </div>
                            </div>
                            <div class="progress-card">
                                <div class="d-flex justify-content-between mb-1">
                                    <span class="text-muted">Orders</span>
                                    <span class="text-muted fw-bold"> 5</span>
                                </div>
                                <div class="progress mb-2" style="height: 7px;">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="65%"></div>
                                </div>
                            </div>
                            <div class="progress-card">
                                <div class="d-flex justify-content-between mb-1">
                                    <span class="text-muted">Tasks Complete</span>
                                    <span class="text-muted fw-bold"> 70%</span>
                                </div>
                                <div class="progress mb-2" style="height: 7px;">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="70%"></div>
                                </div>
                            </div>
                            <div class="progress-card">
                                <div class="d-flex justify-content-between mb-1">
                                    <span class="text-muted">Open Rate</span>
                                    <span class="text-muted fw-bold"> 60%</span>
                                </div>
                                <div class="progress mb-2" style="height: 7px;">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="60%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats">
                        <div class="card-body">
                            <p class="fw-bold mt-1">Statistic</p>
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center icon-warning">
                                        <i class="la la-pie-chart text-warning"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category">New Vendor</p>
                                        <h4 class="card-title">5</h4>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-heart-o text-primary"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category">New Customer</p>
                                        <h4 class="card-title">7</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
               <div class="col-lg-6">
                                <div class="card card-statistics">
                                    <div class="card-header">
                                        <div class="card-heading">
                                            <h4 class="card-title">Bar Chart</h4>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="c3chart-wrapper">
                                            <div id="c3demo3"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card card-statistics">
                                    <div class="card-header">
                                        <div class="card-heading">
                                            <h4 class="card-title">Stacked Bar Chart</h4>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="c3chart-wrapper">
                                            <div id="c3demo4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
            </div>
                        <div class="card-footer ">
                            <div class="stats">
                                <i class="now-ui-icons loader_refresh spin"></i> Updated 3 minutes ago
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="container-fluid">
            <nav class="pull-left">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="http://www.themekita.com">
                            ThemeKita
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Help
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://themewagon.com/license/#free-item">
                            Licenses
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="copyright ml-auto">
                2018, made with <i class="la la-heart heart text-danger"></i> by <a href="http://www.themekita.com">ThemeKita</a>
            </div>				
        </div>
    </footer>
</div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog" aria-labelledby="modalUpdatePro" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h6 class="modal-title"><i class="la la-frown-o"></i> Under Development</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">									
                <p>Currently the pro version of the <b>Ready Dashboard</b> Bootstrap is in progress development</p>
                <p>
                    <b>We'll let you know when it's done</b></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>

        <jsp:include page="/WEB-INF/jsp/common/dashboard/footer.jsp" />
        <script>
    $(document).ready(function () {
        var total = $("#total").text();
        var total1 = $("#total1").text();
        var profit = (parseInt(total) - parseInt(total1));
        $("#profit").text(profit);
        $("#cProfit").text(profit);

    });
</script>