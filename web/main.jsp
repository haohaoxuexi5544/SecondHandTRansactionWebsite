<%@ page import="login.entity.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Publish.Items" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<jsp:useBean id="currentUserBean" scope="session" class="bean.UserBean"/>
<jsp:useBean id="recommendItemsBean" scope="application" class="bean.ItemBean"/>
<%! String userType; %>
<%
    User user = new User();
    user = (User) request.getSession().getAttribute("USER_SESSION");
    if (user!=null){
        currentUserBean.setUserType("online");
        currentUserBean.setUsername(user.getUsername());
    }
    userType = currentUserBean.getUserType();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>头大校内二手交易平台</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="/stylesheets/style.css">
        <!-- App favicon -->
        <link rel="shortcut icon" href="/assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="/assets/js/modernizr.min.js"></script>

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


                        <!-- 右侧下拉框 -->
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

                                <!-- 消息下拉框 -->
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
                                            <a href="/users/message" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                                <p class="notify-details">Cristina Pride</p>
                                                <p class="text-muted font-13 mb-0 user-msg">Hi, How are you? What about our next meeting</p>
                                            </a>

                                            <!-- item-->
                                            <a href="/users/message" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="assets/images/users/avatar-3.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                                <p class="notify-details">Sam Garret</p>
                                                <p class="text-muted font-13 mb-0 user-msg">Yeah everything is fine</p>
                                            </a>

                                            <!-- item-->
                                            <a href="/users/message" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                                <p class="notify-details">Karen Robinson</p>
                                                <p class="text-muted font-13 mb-0 user-msg">Wow that's great</p>
                                            </a>

                                            <!-- item-->
                                            <a href="/users/message" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="assets/images/users/avatar-5.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                                <p class="notify-details">Sherry Marshall</p>
                                                <p class="text-muted font-13 mb-0 user-msg">Hi, How are you? What about our next meeting</p>
                                            </a>

                                            <!-- item-->
                                            <a href="/users/message" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="assets/images/users/avatar-6.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                                <p class="notify-details">Shawn Millard</p>
                                                <p class="text-muted font-13 mb-0 user-msg">Yeah everything is fine</p>
                                            </a>
                                        </div>

                                        <!-- All-->
                                        <a href="/Message/Message.jsp?enter=messageBox" class="dropdown-item text-center text-primary notify-item notify-all">
                                            所有消息 <i class="fi-arrow-right"></i>
                                        </a>

                                    </div>
                                </li>

                                <!-- 个人信息下拉框 -->
                                <li class="dropdown notification-list">
                                    <a class="nav-link dropdown-toggle waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                                        aria-haspopup="false" aria-expanded="false">
                                        <img src="/images/lzn.jpg" alt="user" class="rounded-circle"> <span class="ml-1 pro-user-name"><%= currentUserBean.getUsername()%> <i class="mdi mdi-chevron-down"></i> </span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                        <!-- item-->
                                        <div class="dropdown-item noti-title">
                                            <h6 class="text-overflow m-0">Welcome !</h6>
                                        </div>

                                        <!-- item-->
                                        <a href="#" class="dropdown-item notify-item">
                                            <i class="fi-head"></i> <span>我的主页</span>
                                        </a>

                                        <!-- item-->
                                        <a href="#" class="dropdown-item notify-item">
                                            <i class="fi-file-subtract"></i> <span>我发布的</span>
                                        </a>

                                        <!-- item-->
                                        <a href="#" class="dropdown-item notify-item">
                                            <i class="fi-outbox"></i> <span>我卖出的</span>
                                        </a>

                                        <!-- item-->
                                        <a href="#" class="dropdown-item notify-item">
                                            <i class="fi-inbox"></i> <span>我买到的</span>
                                        </a>

                                        <!-- item-->
                                        <a href="${pageContext.request.contextPath}/UserServlet?method=tologin"
                                           class="dropdown-item notify-item">
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
                                  <input class="form-control" name="xxid" type="text" placeholder="搜索你想要的东西">
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
                    <div class="col-3 mt-2">
                        <div class="card-box ribbon-box" id="frame_3">
                            <div class="ribbon-two ribbon-two-primary"><span>广告栏</span></div>
                            <center>
                                <span class="text-center">广告栏招租中</span>
                            </center>
                        </div>
                    </div>
                    <div class="col-6 mt-2">
                        <div class="card-box ribbon-box" id="frame_1">
                            <div class="ribbon-two ribbon-two-primary"><span>大家都在看</span></div>
                            <br>
                            <!-- 轮播图 -->
                            <div class="carousel slide" data-ride="carousel">
 
                                <!-- 指示符 -->
                                <ul class="carousel-indicators">
                                  <li data-target=".carousel" data-slide-to="0" class="active"></li>
                                  <li data-target=".carousel" data-slide-to="1"></li>
                                  <li data-target=".carousel" data-slide-to="2"></li>
                                </ul>
                               
                                <center>
                                    <!-- 轮播图片 -->
                                  <div class="carousel-inner">
                                      <div class="carousel-item pointer active">
                                            <a href="#"><img src="/images/goods_1.jpg"></a>
                                      </div>
                                      <div class="carousel-item pointer ">
                                            <a href="#"><img src="/images/goods_2.jpg"></a>
                                      </div>
                                      <div class="carousel-item pointer ">
                                            <a href="#"><img src="/images/goods_3.jpg"></a>
                                      </div>
                                  </div>
                                </center>
                               
                                <!-- 左右切换按钮 -->
                                <a class="carousel-control-prev" href=".carousel" data-slide="prev" >
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href=".carousel" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                               
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                      <div class="card-box ribbon-box" id="frame_2">
                          <div class="ribbon-two ribbon-two-primary"><span>我的信息</span></div>
                          <br>

                          <div class="user-info container-fluid">
                            <center style="display: flex;" class="flex-column">
                                <img src="/images/lzn.jpg" alt="user" class="rounded-circle" style="width: 60px;height: 60px;">
                                <span class="font-weight-normal font-15"><%= currentUserBean.getUsername()%></span>
                                <div class="flex-column d-flex">
                                    <a href="/sell.jsp" class="text-muted user-op mr-1 mb-1 mt-3"><i class="mdi mdi-sale"></i> 出售闲置物品</a>
                                    <a href="#" class="text-muted user-op mr-1"><i class="mdi mdi-blinds"></i> 待售物品</a>
        
                                    <a href="#" class="text-muted user-op mr-1 mb-1 mt-1"><i class="mdi mdi-cart"></i> 我的订单</a>
                                    <a href="#" class="text-muted user-op mr-1"><i class="mdi mdi-star"></i> 我的收藏</a>
                                </div>
                            </center>

                            

                          </div>


                      </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card-box row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title font-weight-bold">
                                        看看大家的闲置物品
                                    </h4>
                                </div>
                            </div>

                            <%
                                ArrayList<Items> recommendArrayList = new ArrayList<Items>();
                                recommendArrayList = recommendItemsBean.getRecommendItemList();
                            %>

                            <% for (int i = 0; i < recommendArrayList.size(); i++){%>
                            <%
                                String imagePath = "/images/homePage/recommendItems/goods_"+ Integer.toString(i+1) +".jpg";
                                int itemId = recommendArrayList.get(i).getIdGood();
                                String hrefPath = "/goods_show.jsp?itemId=" + Integer.toString(itemId)+ "&recommendImage=" + Integer.toString(i+1);
                            %>


                                <div class="goods-item col-2 col-md-2 col-sm-3" style="display: flex; flex-direction: column;">
                                    <div class="picframe">
                                        <div  class="content" style="overflow: hidden;" >
                                            <a href="<%= hrefPath%>"><img src="<%= imagePath %>" alt="" class="goods-cp img-thumbnail border-0"></a>
                                        </div>
                                    </div>

                                    <span class="text-center"><%= recommendArrayList.get(i).getGoodName()%></span>
                                    <span class="text-pink font-15 text-right">￥<%= recommendArrayList.get(i).getItemPrice()%></span>
                                    <div class="seller-info float-right">
                                        <img src="/images/lzn.jpg" alt="user" class="rounded-circle" style="width: 20px;height: 20px;">
                                        <span class="seller-nickname text-muted ml-1"><%= recommendArrayList.get(i).getSeller()%> <i class="mdi mdi-message-processing"></i></span>
                                    </div>
                                </div>

                            <% } %>


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
        <div style="z-index: 9999; position: fixed ! important; left: 0px; top: 300px;background: rgb(68, 132, 200);border-radius:0 7px 7px 0;width: 20px;" class="text-center">
            <table style="position: absolute; width:260px; right: 0px; top: 300px;">
                <a href="#" style="color: white;">回到顶部</a>
            </table>
        </div>

        <!-- jQuery  -->
        <script src="/assets/js/jquery.min.js"></script>
        <script src="/assets/js/popper.min.js"></script>
        <script src="/assets/js/bootstrap.min.js"></script>
        <script src="/assets/js/waves.js"></script>
        <script src="/assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="/assets/js/jquery.core.js"></script>
        <script src="/assets/js/jquery.app.js"></script>
        <script>
            $(document).ready(() => {
                setTimeout(() =>{
                    $('#frame_2').height($('#frame_1').height())
                    $('#frame_3').height($('#frame_1').height())
                    $('#frame_3 .text-center').css('line-height', $('#frame_3').height()+"px")
                }, 200)
            })
            
        </script>
    </body>
</html>