<%@ page contentType="text/html; charset=UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
    <title>Trang chủ</title>

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
<style>
    .slider {
        background: black;
        color: white;
        width: 100%;
        height: 300px;
        display: flex;
        margin-bottom: 181px;

    }
    .slide {
        width: 100%;
        flex-shrink: 0;
        height: 100%;
    }
    .slider {
    ...

    -webkit-overflow-scrolling: touch;
        scroll-behavior: smooth;
    }
    .img-slider{
        width: 100%;
        height: auto;
        max-height: 500px;
    }

</style>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <jsp:include page="header.jsp" />
    <!-- Header End -->


<%--    <!-- Hero Section Begin -->--%>
<%--    <section class="hero-section">--%>
<%--        <div class="hero-items owl-carousel">--%>
<%--            <div class="single-hero-items set-bg" data-setbg="img/hero-1.jpg">--%>
<%--                <div class="container">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-5">--%>
<%--&lt;%&ndash;                            <span>Bag,kids</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h1>Black friday</h1>&ndash;%&gt;--%>
<%--                            <a href="#" class="primary-btn">Shop Now</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="off-card">--%>
<%--                        <h2>Sale <span>50%</span></h2>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="single-hero-items set-bg" data-setbg="img/hero-2.jpg">--%>
<%--                <div class="container">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-5">--%>
<%--                            <img src="/views/user/img/unishop.png">--%>
<%--                            <span>Bag,kids</span>--%>
<%--                            <h1>Black friday</h1>--%>

<%--                            <a href="#" class="primary-btn">Shop Now</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="off-card">--%>
<%--                        <h2>Sale <span>50%</span></h2>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
<%--    <!-- Hero Section End -->--%>

    <div class="slider">
        <div class="slide" id="slide-1"><img class="img-slider" src="${pageContext.request.contextPath}/views/user/img/unishop.png"></div>
        <div class="slide" id="slide-2">2</div>

    </div>

    <!-- Latest Blog Section Begin -->
    <section class="latest-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>BEST SELLER</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/cardigan/cardigan_in_may.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="${pageContext.request.contextPath}/views/user/shopping-cart.jsp">+ Thêm vào giỏ hàng</a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Top</div>
                            <a href="#">
                                <h5>Cardigan Emotion</h5>
                            </a>
                            <div class="product-price">
                                185.000
                                <span>200.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/croptop/croptop_daitay.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="${pageContext.request.contextPath}/views/user/shopping-cart.jsp">+ Thêm vào giỏ hàng</a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Top</div>
                            <a href="#">
                                <h5>Croptop dài tay</h5>
                            </a>
                            <div class="product-price">
                                150.000
                                <span>180.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/croptop/croptop_theuhoacuc.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Top</div>
                            <a href="#">
                                <h5>Croptop hoa cúc</h5>
                            </a>
                            <div class="product-price">
                                80.000
                                <span>100.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/Hoodie/hd_dom_den.jpg" alt="">
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
                                <h5>Hoodie đốm đen</h5>
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
                            <img src="${pageContext.request.contextPath}/views/user/img/quần/quan_caro.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Bottom</div>
                            <a href="#">
                                <h5>Quần caro</h5>
                            </a>
                            <div class="product-price">
                                150.000
                                <span>180.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/quần/short_jean.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Bottom</div>
                            <a href="#">
                                <h5>Quần short jean</h5>
                            </a>
                            <div class="product-price">
                                170.000
                                <span>180.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/Phụ%20kiện/balo_dathoitrang3ngan.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Accessories</div>
                            <a href="#">
                                <h5>Balô da 3 ngăn</h5>
                            </a>
                            <div class="product-price">
                                350.000
                                <span>400.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/Phụ%20kiện/tui_deo_canvas.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Accessories</div>
                            <a href="#">
                                <h5>2 Túi đeo canvas</h5>
                            </a>
                            <div class="product-price">
                                140.000
                                <span>150.000</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="${pageContext.request.contextPath}/views/user/img/áo%20khoác/aokhoac_BomberTorona.jpg" alt="">
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
                                <h5>Bomber Torona</h5>
                            </a>
                            <div class="product-price">
                                200.000
                                <span>250.000</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="benefit-items">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="${pageContext.request.contextPath}/views/user/img/icon-1.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Giao hàng tận nơi</h6>
                                <p>Miễn phí ship từ 5 sản phẩm</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="${pageContext.request.contextPath}/views/user/img/icon-2.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>1 đổi 1 nếu lỗi hàng</h6>
                                <p>Trong vòng 7 ngày</p>
                                <p></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-benefit">
                            <div class="sb-icon">
                                <img src="${pageContext.request.contextPath}/views/user/img/icon-1.png" alt="">
                            </div>
                            <div class="sb-text">
                                <h6>Giao hàng nhanh</h6>
                                <p>Nội thành giao trong vòng 24h</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Blog Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="footer.jsp"/>
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