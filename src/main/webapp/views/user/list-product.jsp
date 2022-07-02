<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%
    String error = (String) request.getAttribute("error");

%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TẤT CẢ SẢN PHẨM</title>

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

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    <div class="filter-widget">
                        <h4 class="fw-title">DANH MỤC</h4>
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
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="product-show-option">
                        <div class="row">
                           <p>TẤT CẢ SẢN PHẨM</p>
                        </div>
                    </div>
                    <div class="product-list">
                        <div class="row">
<%--
<%--                            <c:forEach var="p" items="${products}">--%>
<%--                            <div class="col-lg-4 col-sm-6">--%>
<%--                                <div class="product-item">--%>
<%--                                    <div class="pi-pic">--%>
<%--                                        <img src="${p.img}" alt="">--%>
<%--                                        <div class="icon">--%>
<%--                                            <i class="icon_heart_alt"></i>--%>
<%--                                        </div>--%>
<%--                                        <ul>--%>
<%--                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>--%>
<%--                                            <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="pi-text">--%>
<%--                                        <div class="catagory-name">Top</div>--%>
<%--                                        <a href="#">--%>
<%--                                            <h5>${p.name}</h5>--%>
<%--                                        </a>--%>
<%--                                        <div class="product-price">--%>
<%--                                            ${p.sellPrice}--%>
<%--                                            <span>${p.price}</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            </c:forEach>--%>



                <c:forEach items="${productList}" var="product" >
                    <div class="col-lg-4 col-sm-6">
                          <div class="product-item">
                              <div class="pi-pic">
                                  <img src="${pageContext.request.contextPath}${product.imagelink}" alt="">
                                 <div class="icon">
                                    <i class="icon_heart_alt"></i>
                              </div>
                               <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                       <li class="quick-view"><a href="#">+ Thêm vào giỏ hàng</a></li>
                                </ul>
                           <div class="pi-text">
                                 <a href="#">
                                       <h5>${product.name}</h5>
                                   </a>
                                 <div class="product-price">
                                         ${product.price}
                                      <span> 250,000 vnd</span>
                                 </div>
                               </div>
                            </div>
                    </div>
                </div>
                </c:forEach>
                    </div>
                    <!--Phân trang-->
                    <div class="pagination-product">
                        <a href="#">«</a>
                        <a href="#">1</a>
                        <a class="active" href="#">2</a>
                        <a href="#">3</a>

                        <a href="#">»</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="/WEB-INF/footer.jsp" />
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