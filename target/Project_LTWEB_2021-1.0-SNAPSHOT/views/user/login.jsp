<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%
    String error = (String) request.getAttribute("error");

%>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/user/css/slicknav.min.css" type="text/css">
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
                    <a href="/WEB-INF/index.jsp"><i class="fa fa-home"></i> Home</a>
                    <span>Đăng nhập</span>
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
                <div class="login-form">

                    <h2> Đăng Nhập </h2>

                    <form action="/Project_LTWEB_2021/LoginServlet" method="post">
                        <%
                            if(error !=null){
                        %>
                        <div class="alert alert-danger" role="alert">
                            <%= error%>
                        </div>
                        <%
                            }
                        %>
                        <div class="group-input">
                            <label for="username">Tên tài khoản hoặc email *</label>
                            <!--nhập sai mk hệ thống vẫn hiện lại tên ĐN --> <input type="text" id="username" name="username"
                            <% if(request.getParameter("username")!=null){ %>
                                                                                    value="<%= request.getParameter("username") %>" <% }%> >
                        </div>
                        <div class="group-input">
                            <label for="password">Mật khẩu *</label>
                            <input type="password" id="password" name="password">
                        </div>
                        <div class="group-input gi-check">
                            <div class="gi-more">
                                <label for="save-pass">
                                    Lưu mật khẩu
                                    <input type="checkbox" id="save-pass">
                                    <span class="checkmark"></span>
                                </label>
                                <a href="#" class="forget-pass">Quên mật khẩu?</a>
                            </div>
                        </div>
                        <button type="submit" class="site-btn login-btn" value="Login">ĐĂNG NHẬP</button>
                    </form>
                    <div class="switch-login">
                        <a href="${pageContext.request.contextPath}/views/user/register.jsp" class="or-login">hoặc TẠO TÀI KHOẢN</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Register Form Section End -->


<!-- Footer Section Begin -->
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
<!-- Footer Section End -->

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