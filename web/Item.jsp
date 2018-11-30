<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"  %>
<%@ page import="search.Item" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTf-8" />
        <title>搜索结果</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="stylesheets/style.css">
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="assets/js/modernizr.min.js"></script>
        <!-- Sweet Alert css -->
        <link href="plugins/sweet-alert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
    </head>

    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">
                    <!-- Logo container-->
                    <div class="logo">
                        <a href="/main.jsp" class="logo">
                            <span class="logo-large"><i class="mdi mdi-cart-outline"></i> 头大校内二手交易</span>
                        </a> 
                    </div>
                    <!-- End Logo container-->


                    <div class="menu-extras topbar-custom">

                        <ul class="list-unstyled topbar-right-menu float-right mb-0">

                            <li class="menu-item">
                                <!-- Mobile menu toggle-->
                                <a class="navbar-toggle nav-link">
                                    <div class="lines">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>

                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <i class="fi-speech-bubble noti-icon"></i>
                                    <span class="badge badge-danger badge-pill noti-icon-badge">6</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-lg">

                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h6 class="m-0"><span class="float-right"><a href="" class="text-dark"><small>清除</small></a> </span>消息</h6>
                                    </div>

                                    <div class="slimscroll" style="max-height: 230px;">
                                        <!-- item-->
                                        <a href="users/message" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Cristina Pride</p>
                                            <p class="text-muted font-13 mb-0 user-msg">Hi, How are you? What about our next meeting</p>
                                        </a>

                                        <!-- item-->
                                        <a href="publicusers/message" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="assets/images/users/avatar-3.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Sam Garret</p>
                                            <p class="text-muted font-13 mb-0 user-msg">Yeah everything is fine</p>
                                        </a>

                                        <!-- item-->
                                        <a href="publicusers/message" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Karen Robinson</p>
                                            <p class="text-muted font-13 mb-0 user-msg">Wow that's great</p>
                                        </a>

                                        <!-- item-->
                                        <a href="publicusers/message" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="assets/images/users/avatar-5.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Sherry Marshall</p>
                                            <p class="text-muted font-13 mb-0 user-msg">Hi, How are you? What about our next meeting</p>
                                        </a>

                                        <!-- item-->
                                        <a href="users/message" class="dropdown-item notify-item">
                                            <div class="notify-icon"><img src="assets/images/users/avatar-6.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Shawn Millard</p>
                                            <p class="text-muted font-13 mb-0 user-msg">Yeah everything is fine</p>
                                        </a>
                                    </div>

                                    <!-- All-->
                                    <a href="users/message" class="dropdown-item text-center text-primary notify-item notify-all">
                                        所有消息 <i class="fi-arrow-right"></i>
                                    </a>

                                </div>
                            </li>

                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                                    aria-haspopup="false" aria-expanded="false">
                                    <img src="images/lzn.jpg" alt="user" class="rounded-circle"> <span class="ml-1 pro-user-name">廖振肥 <i class="mdi mdi-chevron-down"></i> </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h6 class="text-overflow m-0">Welcome !</h6>
                                    </div>

                                    <!-- item-->
                                    <a href="users/profile" class="dropdown-item notify-item">
                                        <i class="fi-head"></i> <span>我的主页</span>
                                    </a>

                                    <!-- item-->
                                    <a href="users/for_sale" class="dropdown-item notify-item">
                                        <i class="fi-file-subtract"></i> <span>我发布的</span>
                                    </a>

                                    <!-- item-->
                                    <a href="users/what_I_sell" class="dropdown-item notify-item">
                                        <i class="fi-outbox"></i> <span>我卖出的</span>
                                    </a>

                                    <!-- item-->
                                    <a href="users/what_I_bought" class="dropdown-item notify-item">
                                        <i class="fi-inbox"></i> <span>我买到的</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <i class="fi-power"></i> <span>注销</span>
                                    </a>

                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->

            <div class="navbar-custom">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <form action="Item" method="post">
                            <ul class="navigation-menu p-2">
                                <li style="width: 25%;">

                                    <!-- 修改 -->
                                  <input class="form-control" name="xxid" type="text" placeholder="搜索你想要的东西">
                                    <!-- 修改 -->

                                </li>
                                <li>
                                  <button type="submit" class="btn btn-light waves-effect waves-primary"  style="zoom: 0.95;margin-bottom: 2px;" > <i class="fa fa-search m-r-5"></i> <span>搜索</span> </button>
                                </li>
                            </ul>
                        </form>
                        <!-- End navigation menu -->
                    </div> <!-- end #navigation -->
                </div> <!-- end container -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->


        <div class="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                            <div class="row">
                                    <div class="col-12">
                                        <div class="page-title-box">
                    
                                            <h4 class="page-title">
                                                搜索结果
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="search-result-box m-t-30 card-box">
                                            <div class="row">
                                                <div class="col-md-8 offset-md-2">
                                                    <div class="pt-3 pb-4">
                                                        <form action="Item" method="post">
                                                            <div class="input-group m-t-10">                                                                
                                                                <input type="text" id="index" name="xxid" class="form-control" value="">
                                                            <span class="input-group-btn">
                                                                <button type="submit" class="btn waves-effect waves-light btn-custom"><i class="fa fa-search m-r-5"></i> 搜索</button>
                                                            </span>
                                                            </div>
                                                        </form>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end row -->
                    
                                            <div class="col-12">

                                            <c:forEach items="${itemList}" var="item" varStatus="status" >

                                                <div class="search-item search-item-goods">
                                                    <div class="goods-item col-2 col-md-2 col-sm-3" style="display: flex; flex-direction: column;">
                                                        <div class="picframe">
                                                            <div  class="content" style="overflow: hidden;" >
                                                                <a href="${item.hrefPath}"><img src="images/goods_5.jpg" alt="" class="goods-cp img-thumbnail border-0"></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="goods-info">
                                              
                                            
                                                        <h4>${item.name}</h4>                                         
                                           
                                                                                              
                                                        <span class="text-pink font-15">
                                                      
                                                        <h6>￥${item.price}</h6>
                                                       
                                              
                                                        </span>
                                                        <div class="seller-info mt-2 mb-2">
                                                            <img src="images/lzn.jpg" alt="user" class="rounded-circle" style="width: 20px;height: 20px;">
                                                            <span class="seller-nickname text-muted ml-1">
                                                          
                                                            
                                                            <h5>${item.id}</h5>
                                                     

                                                             <i class="mdi mdi-message-processing"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                           
                                            </c:forEach>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        这里是页脚
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->


        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <!-- getVerificationCode -->
        <script src="javascripts/verificationCode.js"></script>
        <!-- Sweet Alert Js  -->
        <script src="plugins/sweet-alert/sweetalert2.min.js"></script>
        <script src="assets/pages/jquery.sweet-alert.init.js"></script>
        <script src="assets/js/modernizr.min.js"></script>
        <script>
            $(document).ready(() => {
                
            })
            window.onbeforeunload = function () {
                
            }
        </script>
    </body>
</html>