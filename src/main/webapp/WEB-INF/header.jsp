<%@ page contentType="text/html; charset=UTF-8" %>

<header class="header-section">
    <div class="header-top">
        <div class="container">
            <div class="ht-left">
                <div class="mail-service">
                    <i class=" fa fa-envelope"></i>
                    unishop@gmail.com
                </div>
                <div class="phone-service">
                    <i class=" fa fa-phone"></i>
                    +84 342 987 861
                </div>
            </div>
            <div class="ht-right">
                <a href="Logout-controller" class="login-panel"> <i class="fa fa-sign-out" ></i> Logout</a>

                <%
                    String name = (String) session.getAttribute("dangnhapthanhcong");
                %>

                <%
                    if(name != null ){
                %>

                <a href="${pageContext.request.contextPath}/views/user/login.jsp" class="login-panel"><i class="fa fa-user"></i>wellcome :  <%=name %></a>

                <%
                }else {

                %>
                <a href="${pageContext.request.contextPath}/views/user/login.jsp" class="login-panel"><i class="fa fa-user"></i>Đăng nhập </a>

                <% }%>
                <a href="${pageContext.request.contextPath}/views/user/register.jsp" class="login-panel"><i class="fa fa-user"></i>Đăng ký</a>

                <div class="top-social">
                    <a href="#"><i class="ti-facebook"></i></a>
                    <a href="#"><i class="ti-twitter-alt"></i></a>
                    <a href="#"><i class="ti-linkedin"></i></a>
                    <a href="#"><i class="ti-pinterest"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="inner-header">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="logo">
                        <a href="/Project_LTWEB_2021/Home">
                            <img src="${pageContext.request.contextPath}/views/user/img/logoweb.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7">
                    <div class="advanced-search">
                        <div class="input-group" style="position: unset">
                            <input type="text" placeholder="Tìm kiếm">
                            <button type="button"><i class="ti-search"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-right col-md-3">
                    <ul class="nav-right">
                        <li class="cart-icon">
                            <a href="#">
                                <i class="icon_bag_alt"></i>
                                <span>0</span>
                            </a>
                            <div class="cart-hover">
                                <div class="select-items">
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td class="si-pic"><img src="img/quần/quan_3_soc.jpg" alt=""></td>
                                            <td class="si-text">
                                                <div class="product-selected">
                                                    <p>150.000 vnđ x 1</p>
                                                    <h6>Quần 3 sọc</h6>
                                                </div>
                                            </td>
                                            <td class="si-close">
                                                <i class="ti-close"></i>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="si-pic"><img src="img/sweater/sweater_anti.jpg" alt=""></td>
                                            <td class="si-text">
                                                <div class="product-selected">
                                                    <p>200.000 vnđ x 1</p>
                                                    <h6>Sweater Antisol</h6>
                                                </div>
                                            </td>
                                            <td class="si-close">
                                                <i class="ti-close"></i>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="select-total">
                                    <span>Tổng cộng:</span>
                                    <h5>350.000 vnđ</h5>
                                </div>
                                <div class="select-button">
                                    <a href="shopping-cart.jsp" class="primary-btn view-card">Xem giỏ hàng</a>
                                    <a href="check-out.jsp" class="primary-btn checkout-btn">Thanh toán</a>
                                </div>
                            </div>
                        </li>
                        <li class="cart-price">0 vnđ</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-item">
        <div class="container">
            <div class="nav-depart">

            </div>
            <nav class="nav-menu mobile-menu">
                <ul>
                    <li class="active"><a href="/Project_LTWEB_2021/Home">TRANG CHỦ</a></li>
                    <li><a href="/Project_LTWEB_2021/Product-list">SHOP</a>
                        <ul class="dropdown">
                            <li><a href="#">TOP</a></li>
                            <li><a href="#">BOTTOM</a></li>
                            <li><a href="#">ACCESSORIES</a></li>
                        </ul>
                    </li>
                    <li><a href="./blog.html">ABOUT</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
        </div>
    </div>
</header>
<!-- Header End -->

</head>

<%--</html>--%>