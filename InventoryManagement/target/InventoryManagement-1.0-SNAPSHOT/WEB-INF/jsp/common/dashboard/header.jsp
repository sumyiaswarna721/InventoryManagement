
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Inventory Management Software</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
        <link rel="stylesheet" href="/resources/assets/css/ready.css">
        <link rel="stylesheet" href="/resources/assets/css/demo.css">
        <link rel="stylesheet" href="/resources/vendor/css/list.css">
        <link rel="stylesheet" href="/resources/vendor/css/stockReport.css">
        <link rel="stylesheet" href="/resources/vendor/css/incomeExpenditure.css">


        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" type="text/css" href="/resource/assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/resource/assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="/resource/assets/css/select2.min.css">
        <link rel="stylesheet" type="text/css" href="/resource/assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="/resource/assets/css/style.css">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


        <link rel="stylesheet" type="text/css" href="customerWiseSalesReport.css">

        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->


        <link rel="stylesheet" type="text/css" href="productWiseSalesReport.css">
        <style>
            /*    Layouts     */

            body {
                min-height: 100vh;
                position: relative;
            }

            .wrapper {
                min-height: 100vh;
                position: relative;
                top: 0;
                height: 100vh;
            }

            .main-header {
                min-height: 60px;
                width: 100%;
                /*                background: black;*/
                position: fixed;
                z-index: 1001;
                border-bottom: 1px solid black;
                .logo-header {
                    float: left;
                    width: 260px;
                    height: 55px;
                    line-height: 1px;
                    border-right: 1px solid #eee;
                    font-style: white;
                    z-index: 1001;
                    font-size: 18px;
                    font-weight: bold;
                    padding-left: 25px;
                    padding-right: 25px;
                    z-index: 1001;
                    display: inline-block;
                    a.logo {
                        color: wheat;
                    }
                    .navbar-toggler {
                        padding-left: 0px;
                        padding-right: 0px;
                        opacity: 0;
                        .navbar-toggler-icon {
                            background: url(../img/menu2.png);
                            background-size: cover;
                            height: 1em;
                            width: 1em;
                            opacity: .8;
                        }
                    }
                    .more {
                        background: white;
                        border: 0;
                        font-size: 26px;
                        padding: 0;
                        opacity: 0;
                    }
                }
            }

            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                width: 260px;
                display: block;
                z-index: 1;
                color: #0b2e13;
                font-weight: 200;
                background: #002752;
                background-size: cover;
                background-position: center center;
                border-right: 1px solid #eee;
                box-shadow: 6px 1px 20px rgba(69, 65, 78, 0.1);
                .user {
                    margin-top: 0px;
                    padding-left: 25px;
                    padding-right: 25px;
                    padding-bottom: 1px;
                    border-bottom: 1px solid #eee;
                    display: block;
                    .photo {
                        width: 40px;
                        height: 40px;
                        overflow: hidden;
                        float: left;
                        margin-right: 11px;
                        z-index: 5;
                        border-radius: 50%;
                        img {
                            width: 100%;
                            height: 100%;
                        }
                    }
                    .info {
                        a {
                            white-space: nowrap;
                            display: block;
                            position: relative;
                            &:hover, &:focus {
                                text-decoration: none;
                            }
                            > span {
                                font-size: 14px;
                                font-weight: bold;
                                color: white;
                                letter-spacing: 0.04em;
                                display: flex;
                                flex-direction: column;
                                .user-level {
                                    color: white;
                                    font-weight: 700;
                                    font-size: 13px;
                                    letter-spacing: 0.05em;
                                    margin-top: 5px;
                                }
                            }
                            .link-collapse {
                                padding: 7px 0;
                            }
                        }
                        .caret {
                            position: absolute;
                            top: 17px;
                            right: 0px;
                            border-top-color: white;
                        }
                    }
                }
                .sidebar-wrapper {
                    position: relative;
                    max-height: calc(100vh - 75px);
                    min-height: 100%;
                    overflow: auto;
                    width: 260px;
                    z-index: 4;
                    padding-top: 55px;
                    padding-bottom: 100px;
                }
                .nav {
                    display: block;
                    float: none;
                    margin-top: 0px;
                    .nav-item {
                        display: list-item;
                        &.active {
                            a {
                                color: #555;
                                font-weight: 700;
                                &:before {
                                    background: #1d7af3;
                                    opacity: 1 !important;
                                    position: absolute;
                                    z-index: 1;
                                    width: 3px;
                                    height: 100%;
                                    content: '';
                                    left: 0;
                                    top: 0;
                                }
                            }
                            &:hover a:before {
                                background: #1d7af3;
                                font-style: inherit;
                                opacity: 1 !important;
                                position: absolute;
                                z-index: 1;
                                width: 3px;
                                height: 100%;
                                content: '';
                                left: 0;
                                top: 0;
                            }
                            a i {
                                color: #4d7cfe;
                            }
                        }
                        a {
                            display: flex;
                            align-items: center;
                            color: white;
                            padding: 13px 25px;
                            width: 100%;
                            font-size: 14px;
                            font-weight:bold;
                            position: relative;
                            margin-bottom: 5px;
                            &:hover, &:focus {
                                text-decoration: #1d7af3;
                                background: #fbfbfb;
                            }
                        }
                        &:hover a:before {
                            background: blue;
                            opacity: 0.7;
                            position: absolute;
                            z-index: 1;
                            width: 3px;
                            height: 100%;
                            content: '';
                            left: 0;
                            top: 0;
                        }
                        a {
                            i {
                                font-size: 23px;
                                color: black;
                                margin-right: 15px;
                                width: 25px;
                                text-align: center;
                                vertical-align: middle;
                                float: left;
                            }
                            p {
                                font-size: 14px;
                                margin-bottom: 0px;
                                letter-spacing: .04em;
                                margin-right: 5px;
                            }
                        }
                    }
                }
            }

            .main-panel {
                position: relative;
                width: calc(100% - 260px);
                min-height: 100%;
                float: right;
                background: #f2f3f8;
                .content {
                    padding: 30px 15px;
                    min-height: calc(100% - 123px);
                    margin-top: 55px;
                }
            }

            .footer {
                border-top: 1px solid #eee;
                padding: 15px;
                background: #555;
                .container-fluid {
                    display: flex;
                    align-items: center;
                }
            }
            .row2{
                height: 50px;
                width: 600px;
            }
            .map-responsive{
                overflow:hidden;
                padding-bottom:50%;
                position:relative;
                height:0;
            }
            .map-responsive iframe{
                left:0;
                top:0;
                height:100%;
                width:100%;
                position:absolute;
            }

        </style>

    </head>
    <body>
        <div class="wrapper">
            <div class="main-header fixed-top">
                <div class="logo-header" style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12); height:70px;">
                    <a class="navbar-brand" href="#">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1557368579/logo_iqjuay.png" width="45" alt="" class="d-inline-block align-middle mr-2">
                      <span  style="color: white">SSB Limited</span>
                                
                        
                    </a>

                    <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
                </div>
                <nav class="navbar navbar-header navbar-expand-lg" style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);height: 70px;padding-top: 0;">
                    <div class="container-fluid">

                        <!--                        <form class="navbar-left navbar-form nav-search mr-md-3" action="">
                                                    <div class="input-group">
                                                        <input type="text" placeholder="Search ..." class="form-control">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">
                                                                <i class="la la-search search-icon"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </form>-->
                        <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                            <!--                            <li class="nav-item dropdown hidden-caret">
                                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="la la-envelope"></i>
                                                            </a>
                            
                                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                <a class="dropdown-item" href="#">Action</a>
                                                                <a class="dropdown-item" href="#">Another action</a>
                                                                <div class="dropdown-divider"></div>
                                                                <a class="dropdown-item" href="#">Something else here</a>
                                                            </div>
                                                        </li>-->
                            <!--                            <li class="nav-item dropdown hidden-caret">
                                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="la la-bell"></i>
                                                                <span class="notification">3</span>
                                                            </a>
                                                            <ul class="dropdown-menu notif-box" aria-labelledby="navbarDropdown">
                                                                <li>
                                                                    <div class="dropdown-title">You have 4 new notification</div>
                                                                </li>
                                                                <li>
                                                                    <div class="notif-center">
                                                                        <a href="#">
                                                                            <div class="notif-icon notif-primary"> <i class="la la-user-plus"></i> </div>
                                                                            <div class="notif-content">
                                                                                <span class="block">
                                                                                    New user registered
                                                                                </span>
                                                                                <span class="time">5 minutes ago</span> 
                                                                            </div>
                                                                        </a>
                                                                        <a href="#">
                                                                            <div class="notif-icon notif-success"> <i class="la la-comment"></i> </div>
                                                                            <div class="notif-content">
                                                                                <span class="block">
                                                                                    Rahmad commented on Admin
                                                                                </span>
                                                                                <span class="time">12 minutes ago</span> 
                                                                            </div>
                                                                        </a>
                                                                        <a href="#">
                                                                            <div class="notif-img"> 
                                                                                <img src="/resources/assets/img/profile2.jpg" alt="Img Profile">
                                                                            </div>
                                                                            <div class="notif-content">
                                                                                <span class="block">
                                                                                    Reza send messages to you
                                                                                </span>
                                                                                <span class="time">12 minutes ago</span> 
                                                                            </div>
                                                                        </a>
                                                                        <a href="#">
                                                                            <div class="notif-icon notif-danger"> <i class="la la-heart"></i> </div>
                                                                            <div class="notif-content">
                                                                                <span class="block">
                                                                                    Farrah liked Admin
                                                                                </span>
                                                                                <span class="time">17 minutes ago</span> 
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <a class="see-all" href="javascript:void(0);"> <strong>See all notifications</strong> <i class="la la-angle-right"></i> </a>
                                                                </li>
                                                            </ul>
                                                        </li>-->
                            <li class="nav-item dropdown">
                                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="/resources/assets/img/myPhoto.JPG" alt="user-img" width="36" class="img-circle"><span >Sumyia Swarna</span></span> </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li>
                                        <div class="user-box">
                                            <div class="u-img"><img src="/resources/assets/img/myPhoto.JPG" alt="user"></div>
                                            <div class="u-text">
                                                <span style="color: white">Sumyia Swarna</span>>
                                                <p class="text-muted">hello@themekita.com</p><a href="/vendor/bio" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                        </div>
                                    </li>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href=""><i class="ti-user"></i> My Profile</a>
                                    <a class="dropdown-item" href="#"></i> My Balance</a>
                                    <a class="dropdown-item" href="#"><i class="ti-email"></i> Inbox</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><i class="ti-settings"></i> Account Setting</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="/home"><i class="fa fa-power-off"></i> Logout</a>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="sidebar justify-content-center bg-info hover color-box bg-info" >

                <div class="sidebar" style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12) ;font-size:30px;font-style:white; ">
                    <div class="scrollbar-inner sidebar-wrapper">
                        <hr>
                        <div class="user">

                            <div class="info">
                                <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">

                                    <h5 class="text-white mb-2"> Client</h5>

                                    <!--                                    <span class="user-level">Client</span>-->

                                </a>
                                <div class="clearfix"></div>
                                <div class="collapse in" id="collapseExample" aria-expanded="true" style="">
                                    <hr>
                                    <ul class="nav">
                                        <li>
                                            <a href="/client">
                                                <h6 class="text-white mb-2">Add New Client</h6>
                                            </a>

                                        </li>
                                        <hr>
<!--                                        <li>
                                            <a href="/client/update">

                                                <h6 class="text-white mb-2">Update Client</h6>
                                            </a>
                                        </li>
                                        <hr>-->
                                        <li>
                                            <a href="/client/view">
                                                <h6 class="text-white mb-2">Client List</h6>

                                            </a>
                                        </li>
                                        <hr>
                                        <li>
                                            <a href="/client/orderList">
                                                <h6 class="text-white mb-2">Order List</h6>

                                            </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <ul class="nav">

                            <li class="nav-item">
                                <a href="/vendor/create">
                                    <i class="la la-keyboard-o"></i>
                                    <h5 class="text-white mb-2"> Vendor</h5>
<!--                                    <span class="badge badge-count" style="color: white">50</span>-->
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/vendor/view">
                                    <i class="la la-keyboard-o"></i>
                                    <h5 class="text-white mb-2"> Vendor List</h5>
                                    <span class="badge badge-count" style="color: white">7</span>
                                </a>
                            </li>
                            <hr>

                            <li class="nav-item">
                                <a href="/product">
                                    <i class="la la-keyboard-o"></i>
                                    <h5 class="text-white mb-2"> Product</h5>
<!--                                    <span class="badge badge-count" style="color: white">180</span>-->
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/product/view">
                                    <i class="la la-th"></i>
                                    <h5 class="text-white mb-2"> Product List</h5>

                                    <span class="badge badge-count" style="color: white">180</span>
                                </a>
                            </li>
                            <hr>

                            <li class="nav-item">
                                <a href="/purchase/add">
                                    <i class="la la-th"></i>
                                    <h5 class="text-white mb-2"> Purchase </h5>

<!--                                    <span class="badge badge-count" style="color: white">6</span>-->
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/purchase/view">
                                    <i class="la la-th"></i>
                                    <h5 class="text-white mb-2"> Purchase List</h5>

                                    <span class="badge badge-count" style="color: white">180</span>
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/sales/create">
                                    <i class="la la-fonticons"></i>
                                    <h5 class="text-white mb-2"> Sales </h5> 

<!--                                    <span class="badge badge-count" style="color: white">10</span>-->
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/sales/view">
                                    <i class="la la-fonticons"></i>
                                    <h5 class="text-white mb-2"> Sales Product</h5> 

                                    <span class="badge badge-count" style="color: white">120</span>
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/stock/view">
                                    <i class="la la-fonticons"></i>
                                    <h5 class="text-white mb-2"> Purchase & Sales Report</h5> 

                                    <span class="badge badge-count" style="color: white">10</span>
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item">
                                <a href="/allStock/view">
                                    <i class="la la-fonticons"></i>
                                    <h5 class="text-white mb-2"> All Product Stock Report</h5> 
                                    
                                </a>
                            </li>

                            <hr>
                            <li class="nav-item">
                                <a href="/currentStock/view">
                                    <i class="la la-fonticons"></i>
                                    <h5 class="text-white mb-2"> ProductWise Stock Report</h5> 
                                </a>
                            </li>

                            <hr>
                           
                            <li class="nav-item">
                                <a href="/customerWiseSales/create">
                                    <i class="la la-font"></i>
                                    <h5 class="text-white mb-2"> CustomerWise SalesReport </h5> 
                                    <span class="badge badge-danger">25</span>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="/dailySales/create">
                                    <i class="la la-font"></i>
                                    <h5 class="text-white mb-2"> Sales Report </h5> 
                                    <span class="badge badge-danger">25</span>
                                </a>
                            </li>
                            <hr>
                             <li class="nav-item">
                                <a href="/sales/invoice">
                                    <i class="la la-font"></i>
                                    <h5 class="text-white mb-2"> Sales Invoice</h5> 
                                    <span class="badge badge-danger">25</span>
                                </a>
                            </li>
                            <hr>
                            <li class="nav-item update-pro">
                                <a href="/incomeExpenditure/create">
                                    <button  data-toggle="modal" data-target="#modalUpdate">
                                        <!--                                    <i class="la la-hand-pointer-o"></i>-->
                                        <h5>Income-Expenditure Report</h5>
                                    </button>
                                </a>
                            </li>
                            <li class="nav-item update-pro">
                                <a href="/profit/create">
                                    <button  data-toggle="modal" data-target="#modalUpdate">
                                        <!--                                    <i class="la la-hand-pointer-o"></i>-->
                                        <h5>Profit Report</h5>
                                    </button>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
