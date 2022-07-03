<%@ page contentType="text/html; charset=UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

<html lang="vi">
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Header</title>
    <link href="${pageContext.request.contextPath}/views/admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/views/admin/css/theme.css" type="text/css" >
</head>
<body>

<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>


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
                            <a href="#"><i class="zmdi zmdi-notifications"></i></a>
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
                        <div class="account-dropdown__item" >
                            <a href="Logout-controller" class="login-panel"> <i class="zmdi zmdi-account"></i>Logout</a>
                        </div>
                        <div class="setting-menu js-right-sidebar d-none d-lg-block">
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
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>