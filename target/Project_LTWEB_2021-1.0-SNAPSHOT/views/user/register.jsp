<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng ký</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href=${pageContext.request.contextPath}/views/user/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/style.css" type="text/css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/views/user/img/favicon.ico"/>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

<!-- Header End -->


<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href="#"><i class="fa fa-home"></i> Home</a>
                    <span>Đăng ký</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Form Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="register-form">
                    <h2>ĐĂNG KÝ</h2>

                    <form action="/Project_LTWEB_2021/Register" method="post">
                        <div class="group-input">
                            <label for="username">Tên tài khoản *</label>
                            <input type="text" id="username" name="username">
                        </div>
                        <div class="group-input">
                            <label for="fullname">Họ tên</label>
                            <input type="text" name="fullname">
                        </div>
                        <div class="group-input">
                            <label for="address">Địa chỉ</label>
                            <input type="text" name="address">
                        </div>
                        <div class="group-input">
                            <label for="phone">Số điện thoại</label>
                            <input type="text" name="phone">
                        </div>
                        <div class="group-input">
                            <label for="pass">Mật khẩu *</label>
                            <input type="password" name="pass" id="pass" required  onkeyup='

                            check();'>
                        </div>
                        <div class="group-input">
                            <label for="re-pass">Nhập lại mật khẩu *</label>
                            <input type="password" name="repass" id="repass" onkeyup='check();'>
                            <span id='message'></span>
                        </div>
                        <button type="submit" class="site-btn register-btn" id="create"  class="submit_btn" onclick="wrong_pass_alert()">ĐĂNG KÝ</button>
                    </form>
                    <div class="switch-login">
                        <a href="${pageContext.request.contextPath}/views/user/login.jsp" class="or-login">hoặc ĐĂNG NHẬP</a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Register Form Section End -->


<!-- Footer Section Begin -->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer-left">
                    <div class="footer-logo">
                        <a href="#"><img src="img/logo-footer.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa chỉ: Kiot Nông Lâm - Tp Thủ Đức - Tp Hồ Chí Minh</li>
                        <li>Điện thoại: +84 342 987 861</li>
                        <li>Email: uníshop@gmail.com</li>
                    </ul>
                    <div class="footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 offset-lg-1">
                <div class="footer-widget">
                    <h5>Liên kết</h5>
                    <ul>
                        <li><a href="#">Tìm kiếm</a></li>
                        <li><a href="#">Giới thiệu</a></li>
                        <li><a href="#">Chính sách đổi trả</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                        <li><a href="#">Điều khoản dịch vụ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-reserved">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright-text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> LẬP TRÌNH WEB_NHÓM 27_2021-2022
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- function to check password -->
<script>
    var check = function() {
        if (document.getElementById('pass').value ==
            document.getElementById('repass').value) {
            document.getElementById('message').style.color = 'green';
            document.getElementById('message').innerHTML = 'matching';
        } else {
            document.getElementById('message').style.color = 'red';
            document.getElementById('message').innerHTML = 'vui lòng nhập đúng password và repassword';
        }
    }
</script>

<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/views/user/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/jquery.countdown.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/jquery.zoom.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/jquery.dd.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/views/user/js/main.js"></script>
</body>

</html>