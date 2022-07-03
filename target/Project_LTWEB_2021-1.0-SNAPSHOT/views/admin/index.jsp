<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%
    String error = (String) request.getAttribute("error");

%>



<head lang="vi">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="au theme template">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Admin</title>

    <!-- Fontfaces CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/font-face.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-4.7/css/font-awesome.min.css"   type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"   type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"  type="text/css">

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-4.1/bootstrap.min.css"  type="text/css">

    <!-- Vendor CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/animsition/animsition.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"   type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/wow/animate.css"   type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/css-hamburgers/hamburgers.min.css"   type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/slick/slick.css"  type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/select2/select2.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/perfect-scrollbar/perfect-scrollbar.css"  type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/vendor/vector-map/jqvmap.min.css" type="text/css">

    <!-- Main CSS-->
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/views/admin/css/theme.css" type="text/css" >

</head>

<body class="animsition">

<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<div class="page-wrapper">

    <aside class="menu-sidebar2">
        <div class="logo">
            <a href="Admin-Home">
                <img src="${pageContext.request.contextPath}/views/admin/images/icon/logo.png" alt="Admin" />
            </a>
        </div>
        <div class="menu-sidebar2__content js-scrollbar1">
            <nav class="navbar-sidebar2">
                <ul class="list-unstyled navbar__list">
                    <li class="active has-sub">
                        <a class="js-arrow" href="index.jsp">Thống kê</a>
                    </li>
                    <li>
                        <a href="category.jsp">
                           Quản lý danh mục sản phẩm</a>

                    </li>

                    <li>
                        <a href="Product_Controller">
                            Quản lý sản phẩm</a>

                    </li>

                    <li>
                        <a href="order.jsp">
                            Quản lý đơn hàng</a>
                    </li>

                    <li>
                        <a href="customer.jsp">
                            Quản lý khách hàng</a>
                    </li>
                    <li>
                        <a href="user.jsp">
                            Quản lý tài khoản</a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>

    <!-- PAGE CONTAINER-->
    <div class="page-container2">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop2">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap2">
                        <div class="logo d-block d-lg-none">
                            <a href="Admin-Home">
                                <img src="${pageContext.request.contextPath}/views/admin/images/icon/logo-white.png" alt="CoolAdmin" />
                            </a>
                        </div>
                        <div class="header-button2">
                            <div class="header-button-item js-item-menu">
                                <i class="zmdi zmdi-search"></i>
                                <div class="search-dropdown js-dropdown">
                                    <form action="">
                                        <input class="au-input au-input--full au-input--h65" type="text" placeholder="Search for datas &amp; reports..." />
                                        <span class="search-dropdown__icon">
                                                <i class="zmdi zmdi-search"></i>
                                            </span>
                                    </form>
                                </div>
                            </div>
                            <div class="header-button-item has-noti js-item-menu">
                                <i class="zmdi zmdi-notifications"></i>
                                <div class="notifi-dropdown js-dropdown">
                                    <div class="notifi__title">
                                        <p>You have 3 Notifications</p>
                                    </div>
                                    <div class="notifi__item">
                                        <div class="bg-c1 img-cir img-40">
                                            <i class="zmdi zmdi-email-open"></i>
                                        </div>
                                        <div class="content">
                                            <p>You got a email notification</p>
                                            <span class="date">April 12, 2018 06:50</span>
                                        </div>
                                    </div>
                                    <div class="notifi__item">
                                        <div class="bg-c2 img-cir img-40">
                                            <i class="zmdi zmdi-account-box"></i>
                                        </div>
                                        <div class="content">
                                            <p>Your account has been blocked</p>
                                            <span class="date">April 12, 2018 06:50</span>
                                        </div>
                                    </div>
                                    <div class="notifi__item">
                                        <div class="bg-c3 img-cir img-40">
                                            <i class="zmdi zmdi-file-text"></i>
                                        </div>
                                        <div class="content">
                                            <p>You got a new file</p>
                                            <span class="date">April 12, 2018 06:50</span>
                                        </div>
                                    </div>
                                    <div class="notifi__footer">
                                        <a href="#">All notifications</a>
                                    </div>
                                </div>
                            </div>
                            <div class="header-button-item mr-0 js-sidebar-btn">
                                <i class="zmdi zmdi-menu"></i>
                            </div>
                            <div style="margin-top: 10px" class="setting-menu js-right-sidebar d-none d-lg-block">
                                <div class="account-dropdown__body">
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-account"></i>Account</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-settings"></i>Setting</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-money-box"></i>Billing</a>
                                    </div>
                                </div>
                                <div class="account-dropdown__body">
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-globe"></i>Language</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-pin"></i>Location</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-email"></i>Email</a>
                                    </div>
                                    <div class="account-dropdown__item">
                                        <a href="#">
                                            <i class="zmdi zmdi-notifications"></i>Notifications</a>
                                    </div>
                                </div>
                            </div>


                            <div class="account-dropdown__item" >
                                <a href="Logout-controller" class="login-panel"> <i class="zmdi zmdi-account"></i>Logout</a>
                            </div>





                        </div>
                    </div>
                </div>
            </div>
        </header>
        <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logo-white.png" alt="Admin" />
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar2">
                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="images/icon/avatar-big-01.jpg" alt="Admin" />
                    </div>
                    <h4 class="name">admin</h4>
                    <a href="#">Đăng xuất</a>
                </div>

            </div>
        </aside>
        <!-- END HEADER DESKTOP-->

        <!-- BREADCRUMB-->
        <section class="au-breadcrumb m-t-75">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="au-breadcrumb-content">
                                <div class="au-breadcrumb-left">
                                    <span class="au-breadcrumb-span">You are here:</span>
                                    <ul class="list-unstyled list-inline au-breadcrumb__list">
                                        <li class="list-inline-item active">
                                            <a href="#">Trang chủ</a>
                                        </li>
                                        <li class="list-inline-item seprate">
                                            <span>/</span>
                                        </li>
                                        <li class="list-inline-item">Thống kê</li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END BREADCRUMB-->

        <!-- STATISTIC-->
        <section class="statistic">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number">45</h2>
                                <span class="desc">Khách hàng</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-account-o"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number">150</h2>
                                <span class="desc">Sản phẩm</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number">50</h2>
                                <span class="desc">Đơn hàng</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-calendar-note"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END STATISTIC-->



    </div>

</div>

<!-- Jquery JS-->
<script src="${pageContext.request.contextPath}/views/admin/vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-4.1/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="${pageContext.request.contextPath}/views/admin/vendor/slick/slick.min.js">
</script>
<script src="${pageContext.request.contextPath}/views/admin/vendor/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/views/admin/vendor/animsition/animsition.min.js"></script>
<script src="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="${pageContext.request.contextPath}/views/admin/vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/views/admin/vendor/counter-up/jquery.counterup.min.js">
</script>



<!-- Main JS-->
<script src="${pageContext.request.contextPath}/views/admin/js/main.js"></script>

</body>

</html>
<!-- end document-->
