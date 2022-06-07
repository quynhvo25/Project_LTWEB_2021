<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">

    <title>Sản phẩm</title>

     <!-- Fontfaces CSS-->
   <link href="css/font-face.css" rel="stylesheet" media="all">
   <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
   <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
   <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

   <!-- Bootstrap CSS-->
   <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

   
   <!-- Main CSS-->
   <link href="css/theme.css" rel="stylesheet" media="all">

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
                                    <a class="js-arrow" href="index.jsp">Thống kê</a>
                                </li>
                                <li >
                                    <a href="category.jsp">
                                        Quản lí danh mục sản phẩm</a>
                                
                                </li>

                                <li class="active">
                                    <a href="product.jsp">
                                        Quản lí sản phẩm</a>
                                
                                </li>

                                <li>
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
                                                    <li class="list-inline-item">Quản lí danh mục sản phẩm</li>
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
                            <label class="title-table">Sản phẩm</label>
                             <button class="btn-add js-btn-add">
                                <i class="fas fa-plus"></i> Thêm
                            </button>
                        </div>

                            <!--SEARCH-->
                        <div class="search">
                            <label class="label-search">Tìm kiếm</label>
                            <input type="text" class="input-search">
                        </div>
                       
                        <!--Table-->
                        <table class="table-category">
                            <tr class="row-1">
                                <th>Mã sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Tên danh mục</th>
                                <th>Giá</th>
                                <th>Hình ảnh</th>
                                <th>Chi tiết</th>
                                <th>Sửa</th>
                                <th>Xóa</th>

                            </tr>
                            <tr class="row-2">
                                <td>1</td>
                                <td>Over Gia Định</td>
                                <td>Áo</td>
                                <td>180.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/over_giadinh.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng, Xanh, Hồng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>1</td>
                                <td>Over loang đen</td>
                                <td>Áo</td>
                                <td>180.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/over_loang_den.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng, Xanh, Hồng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>1</td>
                                <td>Over OOtd</td>
                                <td>Áo</td>
                                <td>180.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/over_giadinh.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng, Xanh, Hồng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>1</td>
                                <td>Sơ mi galaxy</td>
                                <td>Sơ mi</td>
                                <td>250.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/so_mi_galaxy.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>3</td>
                                <td>Sơ mi trái đất</td>
                                <td>Sơ mi</td>
                                <td>250.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/so_mi_traidat.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>1</td>
                                <td>Sơ mi galaxy</td>
                                <td>Sơ mi</td>
                                <td>250.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/so_mi_galaxy.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>3</td>
                                <td>Sơ mi trái đất</td>
                                <td>Sơ mi</td>
                                <td>250.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/so_mi_traidat.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>1</td>
                                <td>Sơ mi galaxy</td>
                                <td>Sơ mi</td>
                                <td>250.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/so_mi_galaxy.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
                            </tr>

                            <tr class="row-2">
                                <td>3</td>
                                <td>Sơ mi trái đất</td>
                                <td>Sơ mi</td>
                                <td>250.000 vnđ</td>
                                <td><img class="img-product-table" src="./images/product/so_mi_traidat.jpg"></td>
                                <td>
                                    <span>
                                         Chất liệu: cotton thoáng mát
                                         Màu sắc: Đen, Trắng
                                         Size: S M L XL
                                    </span>     
                                    
                                </td>
                                <td>
                                    <button class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn-remove">
                                        <i class="fas fa-trash-alt"></i> 
                                    </button>
                                </td>
                                
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

        <!--Footer-->
        <div class="footer">
            <span class="title-footer">
                LẬP TRÌNH WEB - NHÓM  - 2021-2022
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

            <div class="modal-body">
                <table class="modal-table">
                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="id-product" class="modal-label">
                                Mã sản phẩm
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="name-product" class="modal-label">
                               Tên sản phẩm 
                            </label>
                        </th>
                        
                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td"> 
                            <input id="id-product" type="text" class="modal-input">
                        </td>
                        <td class="modal-td">
                            <input id="name-product" type="text" class="modal-input">
                        </td>    
                    </tr>

                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="price-product" class="modal-label">
                                Giá gốc
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="promotional-price-product " class="modal-label">
                                Giá khuyến mãi
                            </label>
                        </th>

                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td"> 
                            <input id="price-product" type="text" class="modal-input">
                        </td>
                        <td class="modal-td">
                            <input id="promotional-price-product" type="text" class="modal-input">
                        </td>    
                    </tr>

                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="quantity-product" class="modal-label">
                                Số lượng
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="img-product" class="modal-label">
                                Hình ảnh
                            </label>
                        </th>

                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td"> 
                            <input id="quantity-product" type="text" class="modal-input">
                        </td>
                        <td class="modal-td">
                            <input id="img-product" type="text" class="modal-input">
                        </td>    
                    </tr>

                </table>

                <div class="menu-category">
                    <label for="category-product">Danh mục sản phẩm:</label>
                    <select id="category-product">
                        <option value="over">Over</option>
                        <option value="ao-khoac">Áo khoác</option>
                        <option value="cardigan">Cardigan</option>
                        <option value="croptop" selected>Croptop</option>
                      </select>
                </div>

                <div class="detail-p">
                    <label for="detail-label">Mô tả sản phẩm:</label>
                    <textarea id="detail-label" name="detail-label" rows="5" cols="100"></textarea>

                </div>


                <button id="modal-btn-add">
                    <i class="hd-icon-modal fas fa-plus"></i>Thêm 
                </button>
            </div>

        </div>
    </div>
    <!--End Modal ADD-->



     <!-- Main JS   -->
     <script src="js/main.js"></script>

     <!--Ẩn hiện form thêm danh mục sản phẩm admin-->
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

   </body>



   </html>