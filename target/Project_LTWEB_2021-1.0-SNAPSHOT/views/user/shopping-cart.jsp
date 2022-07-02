<%@ page contentType="text/html; charset=UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Giỏ hàng</title>

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
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <jsp:include page="/WEB-INF/header.jsp" />
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">Shop</a>
                        <span>Giỏ hàng</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Hình ảnh</th>
                                    <th class="p-name">Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Tổng cộng</th>
                                    <th><i class="ti-close"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="cart-pic first-row"><img class="img-sc" src="img/cardigan/cardigan_butterfly.jpg" alt=""></td>
                                    <td class="cart-title first-row">
                                        <h5>Cardigan butterfly</h5>
                                    </td>
                                    <td class="p-price first-row">180.000</td>
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price first-row">180.000</td>
                                    <td class="close-td first-row"><i class="ti-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="cart-pic"><img class="img-sc" src="img/over/over_loang_den.jpg" alt=""></td>
                                    <td class="cart-title">
                                        <h5>Over loang đen</h5>
                                    </td>
                                    <td class="p-price">180.000</td>
                                    <td class="qua-col">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price">180.000</td>
                                    <td class="close-td"><i class="ti-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="cart-pic"><img class="img-sc" src="img/sơ%20mi/so_mi_jean.jpg" alt=""></td>
                                    <td class="cart-title">
                                        <h5>Sơ mi jean</h5>
                                    </td>
                                    <td class="p-price">200.000</td>
                                    <td class="qua-col">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price">200.000</td>
                                    <td class="close-td"><i class="ti-close"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="cart-buttons">
                                <a href="list-product.jsp" class="primary-btn continue-shop">Tiếp tục mua hàng</a>
                                <a href="#" class="primary-btn up-cart">Cập nhật giỏ hàng</a>
                            </div>
                            <div class="discount-coupon">
                                <h6>Mã giảm giá</h6>
                                <form action="#" class="coupon-form">
                                    <input type="text" placeholder="Nhập mã code">
                                    <button type="submit" class="site-btn coupon-btn">Áp dụng</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 offset-lg-4">
                            <div class="proceed-checkout">
                                <ul>
                                    <li class="subtotal">Tổng tiền hàng <span>560.000</span></li>
                                    <li class="cart-total">Tổng thanh toán <span>560.000</span></li>
                                </ul>
                                <a href="check-out.jsp" class="proceed-btn">TIẾN HÀNH THANH TOÁN</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

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