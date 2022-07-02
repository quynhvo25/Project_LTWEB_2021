<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">

    <title>Sản Phẩm</title>

    <!-- Fontfaces CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">


    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/css/theme.css" rel="stylesheet" media="all">

    <style>
        .img-product-table{
            width: 40%;
        }
    </style>

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
                            <a class="js-arrow" href="index.jsp">Thống Kê</a>
                        </li>
                        <li >
                            <a href="category.jsp">
                                Quản lý danh mục sản phẩm</a>

                        </li>

                        <li class="active">
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

            <div class="au-breadcrumb m-t-75">
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
                                                /</span>
                                            </li>
                                            <li class="list-inline-item">Quản lý danh mục sản phẩm</li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--TABLE-->
            <div class="container-table">

                <!--header-->
                <div class="header-table">
                    <label class="title-table">Sản Phẩm</label>
                    <button class="btn-add js-btn-add">
                        <i class="fas fa-plus"></i>THÊM
                    </button>
                </div>


                <!--SEARCH-->
                <div class="search">
                    <label class="label-search">Tìm Kiếm</label>
                    <input type="text" class="input-search">
                </div>

                <!--Table-->
                <table class="table-category">
                    <tr class="row-1">
                        <th>Mã Sản Phẩm</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Loại Sản Phẩm</th>
                        <th>Giá</th>
                        <th>Link Ảnh</th>
                        <th>Miêu Tả Sản Phẩm</th>
                        <th>Sửa</th>
                        <th>Xóa</th>

                    </tr>

                    <c:forEach items="${productList}" var="product" >
                        <tr class="row-2">
                            <td>${product.masp}</td>
                            <td>${product.name}</td>
                            <td>${product.category}</td>
                            <td>${product.price} VND</td>
                            <td>${product.imagelink}</td>
                            <td>
                                    <span>
                                            ${product.description}
                                    </span>

                            </td>

                            <td>

                                <a href="updateProduct?masp=${product.masp}"><i class="fas fa-edit"></i></a>

                            </td>
                            <td>

                                <a href="deleteProduct?masp=${product.masp}"><i  class="fas fa-trash-alt"></i></a>

                            </td>

                        </tr>
                    </c:forEach>

                </table>


            </div>

            <!--PhÃ¢n trang-->
            <div class="pagination">
                <a href="#"><</a>
                <a href="#">1</a>
                <a class="active" href="#">2</a>
                <a href="#">3</a>
                <a href="#">></a>
            </div>

        </div>

    </div>
</div>

<!--Footer-->
<div class="footer">
            <span class="title-footer">
               Lập trình web - Nhóm 27 - 2021-2022
            </span>
</div>

<!--Modal ADD-->
<div class="modal-add js-modal">
    <div class="modal-container">
        <div class="modal-close js-modal-close">
            <i class="fas fa-close"></i>
        </div>

        <div class="header-modal-add">
               <span class="header-title">
                   <i class="hd-icon-modal fas fa-plus"></i>Thêm sản phẩm</span>
        </div>
        <form action="/Project_LTWEB_2021/addProduct" method="post">
            <div class="modal-body">
                <table class="modal-table">
                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="masp" class="modal-label">
                                Mã Sản Phẩm
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="name" class="modal-label">
                                Tên Sản Phẩm
                            </label>
                        </th>

                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td">
                            <input id="masp" name="masp" type="text" class="modal-input">
                        </td>
                        <td class="modal-td">
                            <input id="name" name="name" type="text" class="modal-input">
                        </td>
                    </tr>

                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="category" class="modal-label">
                                Loại Sản Phẩm
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="price " class="modal-label">
                                Giá
                            </label>
                        </th>

                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td">
                            <input id="category" name="category" type="text" class="modal-input">
                        </td>
                        <td class="modal-td">
                            <input id="price" name="price" type="text" class="modal-input">
                        </td>
                    </tr>

                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="imagelink" class="modal-label">
                                Link Ảnh
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="description" class="modal-label">
                                Miêu Tả Sản Phẩm
                            </label>
                        </th>

                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td">
                            <input id="imagelink" name="imagelink" type="text" class="modal-input">
                        </td>
                        <td class="modal-td">
                            <input id="description" name="description" type="text" class="modal-input">
                        </td>
                    </tr>

                </table>
                <button id="modal-btn-add" type="submit" class="site-btn login-btn"><i class="hd-icon-modal fas fa-plus"></i>Thêm</button>
            </div>

        </form>

    </div>
</div>
<!--End Modal ADD-->



<!--



<%--  Main JS   -->--%>
<script src="${pageContext.request.contextPath}/views/admin/js/main.js"></script>

<!--áº¨n hiá»n formTHÊM danh má»¥c sáº£n pháº©m admin-->
<script>
    const addCategoryBtn = document.querySelector('.js-btn-add')
    const modal = document.querySelector('.js-modal')
    const modalClose = document.querySelector('.js-modal-close')

    function showFormAddCategory(){
        modal.classList.add('open')

    }
    function hideFormCategory(){
        modal.classList.remove('open')
    }
    addCategoryBtn.addEventListener('click',showFormAddCategory)
    modalClose.addEventListener('click',hideFormCategory)
</script>




<!--áº¨n hiá»n formTHÊM danh má»¥c sáº£n pháº©m admin-->
<script>
    const updateCategoryBtn = document.querySelector('.js-btn-update')
    const modal = document.querySelector('.js-modal2')
    const modalClose = document.querySelector('.js-modal-close2')

    function showFormAddCategory(){
        modal.classList.add('open')

    }
    function hideFormCategory(){
        modal.classList.remove('open')
    }
    updateCategoryBtn .addEventListener('click',showFormAddCategory)
    modalClose.addEventListener('click',hideFormCategory)
</script>

</body>



</html>