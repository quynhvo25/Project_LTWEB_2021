<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import= "vn.edu.hcmuaf.fit.beans.Product" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%
    String error = (String) request.getAttribute("error");
    Product product = (Product) request.getAttribute("product");

%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CHI TIẾT SẢN PHẨM </title>


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
    <jsp:include page="/WEB-INF/header.jsp" />
<!-- Header End -->



<!-- Header Section Begin -->
<%--<header class="header-section">--%>
<%--    <div class="header-top">--%>
<%--        <div class="container">--%>
<%--            <div class="ht-left">--%>
<%--                <div class="mail-service">--%>
<%--                    <i class=" fa fa-envelope"></i>--%>
<%--                    unishop@gmail.com--%>
<%--                </div>--%>
<%--                <div class="phone-service">--%>
<%--                    <i class=" fa fa-phone"></i>--%>
<%--                    +84 342 987 861--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="ht-right">--%>
<%--                <a href="login.jsp" class="login-panel"><i class="fa fa-user"></i>ÄÄng nháº­p</a>--%>
<%--                <a href="register.jsp" class="login-panel"><i class="fa fa-user"></i>ÄÄng kÃ½</a>--%>
<%--                <div class="top-social">--%>
<%--                    <a href="#"><i class="ti-facebook"></i></a>--%>
<%--                    <a href="#"><i class="ti-twitter-alt"></i></a>--%>
<%--                    <a href="#"><i class="ti-linkedin"></i></a>--%>
<%--                    <a href="#"><i class="ti-pinterest"></i></a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="container">--%>
<%--        <div class="inner-header">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-2 col-md-2">--%>
<%--                    <div class="logo">--%>
<%--                        <a href="../../WEB-INF/index.jsp">--%>
<%--                            <img src="img/logoweb.png" alt="">--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-7 col-md-7">--%>
<%--                    <div class="advanced-search">--%>
<%--                        <div class="input-group" style="position: unset">--%>
<%--                            <input type="text" placeholder="TÃ¬m kiáº¿m">--%>
<%--                            <button type="button"><i class="ti-search"></i></button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-3 text-right col-md-3">--%>
<%--                    <ul class="nav-right">--%>
<%--                        <li class="cart-icon">--%>
<%--                            <a href="#">--%>
<%--                                <i class="icon_bag_alt"></i>--%>
<%--                                <span>3</span>--%>
<%--                            </a>--%>
<%--                            <div class="cart-hover">--%>
<%--                                <div class="select-items">--%>
<%--                                    <table>--%>
<%--                                        <tbody>--%>
<%--                                        <tr>--%>
<%--                                            <td class="si-pic"><img src="img/quáº§n/quan_3_soc.jpg" alt=""></td>--%>
<%--                                            <td class="si-text">--%>
<%--                                                <div class="product-selected">--%>
<%--                                                    <p>150.000 vnÄ x 1</p>--%>
<%--                                                    <h6>Quáº§n 3 sá»c</h6>--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td class="si-close">--%>
<%--                                                <i class="ti-close"></i>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td class="si-pic"><img src="img/sweater/sweater_anti.jpg" alt=""></td>--%>
<%--                                            <td class="si-text">--%>
<%--                                                <div class="product-selected">--%>
<%--                                                    <p>200.000 vnÄ x 1</p>--%>
<%--                                                    <h6>Sweater Antisol</h6>--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td class="si-close">--%>
<%--                                                <i class="ti-close"></i>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        </tbody>--%>
<%--                                    </table>--%>
<%--                                </div>--%>
<%--                                <div class="select-total">--%>
<%--                                    <span>Tá»ng cá»ng:</span>--%>
<%--                                    <h5>350.000 vnÄ</h5>--%>
<%--                                </div>--%>
<%--                                <div class="select-button">--%>
<%--                                    <a href="shopping-cart.jsp" class="primary-btn view-card">Xem giá» hÃ ng</a>--%>
<%--                                    <a href="check-out.jsp" class="primary-btn checkout-btn">Thanh toÃ¡n</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        <li class="cart-price">350.000 vnÄ</li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="nav-item">--%>
<%--        <div class="container">--%>
<%--            <div class="nav-depart">--%>

<%--            </div>--%>
<%--            <nav class="nav-menu mobile-menu">--%>
<%--                <ul>--%>
<%--                    <li class="active"><a href="../../WEB-INF/index.jsp">TRANG CHá»¦</a></li>--%>
<%--                    <li><a href="list-product.jsp">SHOP</a>--%>
<%--                        <ul class="dropdown">--%>
<%--                            <li><a href="#">TOP</a></li>--%>
<%--                            <li><a href="#">BOTTOM</a></li>--%>
<%--                            <li><a href="#">ACCESSORIES</a></li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li><a href="./blog.html">ABOUT</a></li>--%>
<%--                    <li><a href="contact.jsp">CONTACT</a></li>--%>
<%--                </ul>--%>
<%--            </nav>--%>
<%--            <div id="mobile-menu-wrap"></div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</header>--%>
<!-- Header End -->





<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text product-more">
                    <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                    <a href="./shop.html">Shop</a>
                    <span>Chi tiết sản phẩm</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Product Shop Section Begin -->
<section class="product-shop spad page-details">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="filter-widget">
                    <h4 class="fw-title">DANH Mục</h4>
                    <ul class="filter-catagories">
                        <li><a href="#">TOP</a></li>
                        <ul class="sub-catagories">
                            <li>Cardigan</li>
                            <li>Croptop</li>
                            <li>Hoodie</li>
                            <li>Over</li>
                            <li>Sweater</li>

                        </ul>
                        <li><a href="#">BOTTOM</a></li>
                        <ul class="sub-catagories">
                            <li>Quần</li>
                        </ul>
                        <li><a href="#">ACCESSORIES</a></li>
                    </ul>

                </div>

            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="product-pic-zoom">
                            <img class="product-big-img" src="${pageContext.request.contextPath}${product.imagelink}" alt="">
                            <div class="zoom-icon">
                                <i class="fa fa-search-plus"></i>
                            </div>
                        </div>
                        <div class="product-thumbs">
                            <div class="product-thumbs-track ps-slider owl-carousel">
                                <div class="pt active" data-imgbigurl="${pageContext.request.contextPath}${product.imagelink}"><img
                                        src="${pageContext.request.contextPath}${product.imagelink}" alt=""></div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="product-details">
                            <div class="pd-title">
                                <span>Cardigan</span>
                                <h3>${product.price}</h3>
                                <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                            </div>
                            <div class="pd-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <span>(5)</span>
                            </div>
                            <div class="pd-desc">
                                <p>${product.description}</p>
                                <h4> ${product.price} <span>200.000</span></h4>
                            </div>
                            <div class="pd-color">
                                <h6>Color</h6>
                                <div class="pd-color-choose">
                                    <div class="cc-item">
                                        <input type="radio" id="cc-black">
                                        <label for="cc-black"></label>
                                    </div>
                                    <div class="cc-item">
                                        <input type="radio" id="cc-yellow">
                                        <label for="cc-yellow" class="cc-yellow"></label>
                                    </div>
                                    <div class="cc-item">
                                        <input type="radio" id="cc-violet">
                                        <label for="cc-violet" class="cc-violet"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="pd-size-choose">
                                <div class="sc-item">
                                    <input type="radio" id="sm-size">
                                    <label for="sm-size">s</label>
                                </div>
                                <div class="sc-item">
                                    <input type="radio" id="md-size">
                                    <label for="md-size">m</label>
                                </div>
                                <div class="sc-item">
                                    <input type="radio" id="lg-size">
                                    <label for="lg-size">l</label>
                                </div>
                                <div class="sc-item">
                                    <input type="radio" id="xl-size">
                                    <label for="xl-size">xs</label>
                                </div>
                            </div>
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                                <a href="#" class="primary-btn pd-cart">Thêm sản phẩm vào giỏ hàng</a>
                            </div>

                            <div class="pd-share">
                                <div class="p-code">Sku : 00012</div>
                                <div class="pd-social">
                                    <a href="#"><i class="ti-facebook"></i></a>
                                    <a href="#"><i class="ti-twitter-alt"></i></a>
                                    <a href="#"><i class="ti-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-tab">
                    <div class="tab-item">
                        <ul class="nav" role="tablist">
                            <li>
                                <a class="active" data-toggle="tab" href="#tab-1" role="tab">Mô tả</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab-2" role="tab">Chi tiết sản phẩm</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab-3" role="tab">Bảng đánh giá</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-item-content">
                        <div class="tab-content">
                            <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                <div class="product-content">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <h5>${product.name}</h5>
                                            <p>${product.description}</p>
                                        </div>
                                        <div class="col-lg-5">
                                            <img src="img/product-single/tab-desc.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                <div class="specification-table">
                                    <table>
                                        <tr>
                                            <td class="p-catagory">Xếp hạng khách hàng</td>
                                            <td>
                                                <div class="pd-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <span>(5)</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Giá</td>
                                            <td>
                                                <div class="p-price">${product.price} VND</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Thêm vào giỏ hàng/td>
                                            <td>
                                                <div class="cart-add">+ Thêm vào giỏ hàng</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Kháº£ dá»¥ng</td>
                                            <td>
                                                <div class="p-stock">22 trong kho</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Trá»ng lÆ°á»£ng</td>
                                            <td>
                                                <div class="p-weight">1,3kg</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Size</td>
                                            <td>
                                                <div class="p-size">Xxl</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Mã sản phẩm</td>
                                            <td><span class="cs-color"></span></td>
                                        </tr>
                                        <tr>
                                            <td class="p-catagory">Sku</td>
                                            <td>
                                                <div class="p-code">00012</div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                <div class="customer-review-option">
                                    <h4>2 Bình luận</h4>
                                    <div class="comment-option">
                                        <div class="co-item">
                                            <div class="avatar-pic">
                                                <img src="img/product-single/avatar-1.png" alt="">
                                            </div>
                                            <div class="avatar-text">
                                                <div class="at-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <h5>Brandon Kelley <span>27/8/2021</span></h5>
                                                <div class="at-reply">Äáº¹p</div>
                                            </div>
                                        </div>
                                        <div class="co-item">
                                            <div class="avatar-pic">
                                                <img src="img/product-single/avatar-2.png" alt="">
                                            </div>
                                            <div class="avatar-text">
                                                <div class="at-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <h5>Roy Banks <span>25/12/2021</span></h5>
                                                <div class="at-reply">Äáº¹p!</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="personal-rating">
                                        <h6>Xáº¿p háº¡ng cá»§a báº¡n</h6>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <div class="leave-comment">
                                        <h4>HÃ£y Äá» láº¡i bÃ¬nh luáº­n </h4>
                                        <form action="#" class="comment-form">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <input type="text" placeholder="TÃªn">
                                                </div>
                                                <div class="col-lg-6">
                                                    <input type="text" placeholder="Email">
                                                </div>
                                                <div class="col-lg-12">
                                                    <textarea placeholder="Tin nháº¯n"></textarea>
                                                    <button type="submit" class="site-btn">Gá»­i tin nháº¯n</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Shop Section End -->

<!-- Related Products Section End -->
<div class="related-products spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Sản phẩm liên quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="img/cardigan/cardigan_hinhbonghoa.jpg" alt="">
                        <div class="icon">
                            <i class="icon_heart_alt"></i>
                        </div>
                        <ul>
                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                            <li class="quick-view"><a href="#">+ Thêm sản phẩm vào giỏ hàng</a></li>
                        </ul>
                    </div>
                    <div class="pi-text">
                        <div class="catagory-name">Top</div>
                        <a href="#">
                            <h5>Cardigan bông hoa</h5>
                        </a>
                        <div class="product-price">
                            200.000
                            <span>250.000</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="img/cardigan/cardigan_basic.jpg" alt="">
                        <div class="icon">
                            <i class="icon_heart_alt"></i>
                        </div>
                        <ul>
                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                            <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                        </ul>
                    </div>
                    <div class="pi-text">
                        <div class="catagory-name">Top</div>
                        <a href="#">
                            <h5>Cardigan basic</h5>
                        </a>
                        <div class="product-price">
                            ${product.price}
                            <span>250.000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="img/cardigan/cardigan_2tuingang.jpg" alt="">
                        <div class="icon">
                            <i class="icon_heart_alt"></i>
                        </div>
                        <ul>
                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                            <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                        </ul>
                    </div>
                    <div class="pi-text">
                        <div class="catagory-name">Top</div>
                        <a href="#">
                            <h5>Cardigan 2 túi ngang</h5>
                        </a>
                        <div class="product-price">
                            ${product.price}
                            <span>200.000</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Related Products Section End -->

<!-- Footer Section Begin -->
<%--<footer class="footer-section">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-3">--%>
<%--                <div class="footer-left">--%>
<%--                    <div class="footer-logo">--%>
<%--                        <a href="#"><img src="img/logo-footer.png" alt=""></a>--%>
<%--                    </div>--%>
<%--                    <ul>--%>
<%--                        <li>Äá»a chá»: Kiot NÃ´ng LÃ¢m - Tp Thá»§ Äá»©c - Tp Há» ChÃ­ Minh</li>--%>
<%--                        <li>Äiá»n thoáº¡i: +84 342 987 861</li>--%>
<%--                        <li>Email: unÃ­shop@gmail.com</li>--%>
<%--                    </ul>--%>
<%--                    <div class="footer-social">--%>
<%--                        <a href="#"><i class="fa fa-facebook"></i></a>--%>
<%--                        <a href="#"><i class="fa fa-instagram"></i></a>--%>
<%--                        <a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--                        <a href="#"><i class="fa fa-pinterest"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-2 offset-lg-1">--%>
<%--                <div class="footer-widget">--%>
<%--                    <h5>LiÃªn káº¿t</h5>--%>
<%--                    <ul>--%>
<%--                        <li><a href="#">TÃ¬m kiáº¿m</a></li>--%>
<%--                        <li><a href="#">Giá»i thiá»u</a></li>--%>
<%--                        <li><a href="#">ChÃ­nh sÃ¡ch Äá»i tráº£</a></li>--%>
<%--                        <li><a href="#">ChÃ­nh sÃ¡ch báº£o máº­t</a></li>--%>
<%--                        <li><a href="#">Äiá»u khoáº£n dá»ch vá»¥</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="copyright-reserved">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-12">--%>
<%--                    <div class="copyright-text">--%>
<%--                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->--%>
<%--                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Láº¬P TRÃNH WEB_NHÃM 27_2021-2022--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>
<!-- Footer Section Begin -->
<jsp:include page="/WEB-INF/footer.jsp"/>
<!-- Footer Section End -->

<!-- Footer Section End -->

<!-- Js Plugins -->
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