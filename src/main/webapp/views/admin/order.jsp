<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  

    <title>Đơn hàng</title>

     <!-- Fontfaces CSS-->
   <link href="css/font-face.css" rel="stylesheet" media="all">
   <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
   <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
   <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

   <!-- Bootstrap CSS-->
   <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

   
   <!-- Main CSS-->
   <link href="css/theme.css" rel="stylesheet" media="all">


</head>
<body>
    <div class="contain">
        <div class="page-wrapper">
             <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar2">
                <div class="logo">
                    <a href="#">
                        <img src="images/icon/logo-white.png" alt="Admin" />
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar1">
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li>
                                <a class="js-arrow" href="index.jsp">Thống kê</a>
                            </li>
                            <li >
                                <a href="category.jsp">
                                    Quản lí danh mục sản phẩm</a>
                            
                            </li>

                            <li>
                                <a href="product.jsp">
                                    Quản lí sản phẩm</a>
                            
                            </li>

                            <li class="active">
                                <a href="order.jsp">
                                Quản lí đơn hàng</a>
                            </li>
                            
                            <li>
                                <a href="customer.jsp">
                                Quản lí khách hàng</a>
                            </li>
                            <li>
                                <a href="user.jsp">
                                Quản lí tài khoản</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
             <!-- END MENU SIDEBAR-->

             <!-- PAGE CONTAINER-->
            <div class="page-container2">
                 <!-- HEADER DESKTOP-->
                <header class="header-desktop2">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap2">
                                <div class="logo d-block d-lg-none">
                                    <a href="#">
                                        <img src="images/icon/logo-white.png" alt="CoolAdmin" />
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
                <!--End Header-->

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
                                                <li class="list-inline-item">Quản lí đơn hàng</li>
                                            </ul>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!--TABLE-->
                <div class="container-table">
                    <div class="header-table">
                        <label class="title-table">Đơn hàng</label>
                    </div>

                    <!--SEARCH-->
                    <div class="search">
                        <label class="label-search">Tìm kiếm</label>
                        <input type="text" class="input-search">

                    </div>
                    <!--Table-->
                    <table class="table-category">
                        <tr class="row-1">
                            <th>Mã đơn hàng</th>
                            <th>Mã khách hàng</th>
                            <th>Tên khách hàng</th>
                            <th>Số điẹn thoại</th>
                            <th>Địa chỉ</th>
                            <th>Ghi chú</th>
                            <th>Trạng thái</th>
                            

                        </tr>
                        <tr class="row-2">
                            <td>DH01</td>
                            <td>quynh</td>
                            <td>Thanh Quỳnh</td>
                            <td>0909090909</td>
                            <td>Gia Lai</td>
                            <td>giao giờ hàng chính</td>
                            <td><span class="status">Chờ xác nhận</span></td>
                            
                            
                        </tr>

                       
                        
                    </table>
                </div>

                <!--Phân trang-->
                <div class="pagination">
                    <a href="#">«</a>
                    <a href="#">1</a>
                    <a class="active" href="#">2</a>
                    <a href="#">3</a>
                    
                    <a href="#">»</a>
                </div>

            </div>
            
           

        </div>

      

    </div>

    <!--FOOTER-->
    <div class="footer">
        <span class="title-footer">
            LẬP TRÌNH WEB - NHÓM  - 2021-2022
        </span>

    </div>

   <!-- Main JS-->
   <script src="js/main.js"></script>
    

</body>

</html>