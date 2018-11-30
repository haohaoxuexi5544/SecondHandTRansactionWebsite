<%--
  Created by IntelliJ IDEA.
  User: fcncd
  Date: 2018/11/30
  Time: 6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="currentUserBean" scope="session" class="bean.UserBean"/>
<% session.setAttribute("user",currentUserBean.getUsername().toString()); %>
<html>
<head>
    <meta charset="utf-8" />
    <title>物品上架</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="/stylesheets/style.css">
    <!-- App favicon -->
    <link rel="shortcut icon" href="/assets/images/favicon.ico">

    <!-- App css -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" />

    <script src="/assets/js/modernizr.min.js"></script>
    <!-- Sweet Alert css -->
    <link href="/plugins/sweet-alert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap fileupload css -->
    <link href="/plugins/bootstrap-fileupload/bootstrap-fileupload.css" rel="stylesheet" />
    <!-- Dropzone css -->
    <link href="/plugins/dropzone/dropzone.css" rel="stylesheet" type="text/css" />

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
                            <a href="/users/message" class="dropdown-item text-center text-primary notify-item notify-all">
                                所有消息 <i class="fi-arrow-right"></i>
                            </a>

                        </div>
                    </li>

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                           aria-haspopup="false" aria-expanded="false">
                            <img src="/images/lzn.jpg" alt="user" class="rounded-circle"> <span class="ml-1 pro-user-name">廖振肥 <i class="mdi mdi-chevron-down"></i> </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-item noti-title">
                                <h6 class="text-overflow m-0">Welcome !</h6>
                            </div>

                            <!-- item-->
                            <a href="/users/profile" class="dropdown-item notify-item">
                                <i class="fi-head"></i> <span>我的主页</span>
                            </a>

                            <!-- item-->
                            <a href="/users/for_sale" class="dropdown-item notify-item">
                                <i class="fi-file-subtract"></i> <span>我发布的</span>
                            </a>

                            <!-- item-->
                            <a href="/users/what_I_sell" class="dropdown-item notify-item">
                                <i class="fi-outbox"></i> <span>我卖出的</span>
                            </a>

                            <!-- item-->
                            <a href="/users/what_I_bought" class="dropdown-item notify-item">
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
                <form action="">
                    <ul class="navigation-menu p-2">
                        <li style="width: 25%;">
                            <input class="form-control" type="text" placeholder="搜索你想要的东西">
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
            <div class="col-10 offset-1 mt-4">
                <div class="card-box">
                    <div class="offset-4 col-4">
                        <form action="/sell" method="post">
                            <div class="form-group">
                                <label for="name" class="text-left" style="text-align:left!important">商品名称<span class="text-danger">*</span></label>
                                <input type="text" name="name" parsley-trigger="change" required placeholder="你想卖的是什么商品呢？（2-20个字）" class="form-control"
                                       minlength="2" maxlength="20">
                            </div>
                            <div class="form-group">
                                <label for="price" class="text-left" style="text-align:left!important">商品价格<span class="text-danger">*</span></label>
                                <input type="text" name="price" parsley-trigger="change" required placeholder="商品价格" class="form-control"
                                       minlength="2" maxlength="20">
                            </div>
                            <div class="form-group">
                                <label for="goodsIntro">商品描述<span class="text-danger"></span></label>
                                <textarea name="goodsIntro" parsley-trigger="change" placeholder="说说这个商品的介绍" class="form-control"
                                          maxlength="20"></textarea>
                            </div>
                            <!--
                            <div class="form-group">
                                <label for="goodsPics">商品图片<span class="text-danger"></span></label>
                                <form action="/photoUpload" enctype="multipart/form-data" method="POST" class="dropzone" id="dropz">
                                    <div class="fallback">
                                        <input name="goodsPics" type="file" multiple />
                                    </div>
                                </form>
                            </div>
                            -->
                            <div class="form-group">
                                <label for="verificationCode">验证码<span class="text-danger">*</span></label>
                                <input required placeholder="请输入下图中的验证码" class="form-control" name="verificationCode" id="verificationCode">
                                <div style="display: flex; flex-direction: column;" class="text-right">
                                    <div id="captchaPic" class="pointer" onclick="createCode()"></div>
                                    <span class="pointer mr-2" id="changeCaptcha" onclick="createCode()">看不清？换一张</span>
                                </div>
                            </div>

                            <div class="form-group text-right m-b-0">
                                <input type="submit" class="btn btn-primary btn-sm mt-1" style="zoom: 0.8;" value="发布">

                                <a type="button" class="btn btn-light waves-effect m-l-5" href="/main.jsp">
                                    取消
                                </a>
                            </div>
                        </form>


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
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/popper.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/waves.js"></script>
<script src="/assets/js/jquery.slimscroll.js"></script>
<!-- Dropzone js -->
<script src="/plugins/dropzone/dropzone.js"></script>
<!-- App js -->
<script src="/assets/js/jquery.core.js"></script>
<script src="/assets/js/jquery.app.js"></script>
<!-- getVerificationCode -->
<script src="/javascripts/verificationCode.js"></script>
<!-- Sweet Alert Js  -->
<script src="/plugins/sweet-alert/sweetalert2.min.js"></script>
<script src="/assets/pages/jquery.sweet-alert.init.js"></script>
<script src="/assets/js/modernizr.min.js"></script>
<!-- Bootstrap fileupload js -->
<script src="/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<!-- Parsley js -->
<script type="text/javascript" src="/plugins/parsleyjs/parsley.min.js"></script>
<script>
    $(document).ready(() => {
        createCode();
    $('form').parsley();
    })
    window.onbeforeunload = function () {
        createCode();
    }
    $("#dropz").dropzone({
        url: '/photoUpload',
        maxFilesize: 20, //MB
        acceptedFiles: ".jpg,.gif,.png,.jpeg", //上传的类型
        dictMaxFilesExceeded: "您最多只能上传10个文件！",
        dictResponseError: '文件上传失败!',
        dictInvalidFileType: "你不能上传该类型文件,文件类型只能是*.jpg,*.gif,*.png,*jpeg。",
        dictFallbackMessage:"浏览器不受支持",
        dictFileTooBig:"文件过大上传文件最大支持.",
        dictDefaultMessage: "选择图片上传",
        dictRemoveFile: '1',
        dictCancelUpload: '1',
        addRemoveLinks: true,
        removedfile: function(file) {
            var _ref;
            return (_ref = file.previewElement) != null ? _ref.parentNode.removeChild(file.previewElement) : void 0;
        },
        init:function(){
            this.on("addedfile", function(file) {
                //上传文件时触发的事件

            });
            this.on("queuecomplete",function(file) {

            });
            this.on("removedfile",function(file){
                //删除文件时触发的方法


            });
            this.on("success", function(file, res){
                //file._id = res;
            });
            //         var submitButton_1 = document.querySelector("#albumCreateButton");
            //         var _this = this;
            //         submitButton_1.addEventListener('click', ()=>{
            //             //点击上传文件
            //             var data = {};
            //             
            //         });
        }

    });

</script>
</body>
</html>
