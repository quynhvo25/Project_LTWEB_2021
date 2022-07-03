<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="ISO-8859-1">
<title>Cập nhật sản phẩm</title>

    <!-- Fontfaces CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/views/admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">


    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/views/admin/css/theme.css" rel="stylesheet" media="all">
</head>

<body>

     <!--Modal Edit-->
    <div class="modal-add js-modal-edit" style="display:flex">
        <div class="modal-container">
            <div class="modal-close js-modal-close-edit">
                <i class="fas fa-close"></i>
            </div>

            <div class="header-modal-add">
               <span class="header-title">
                   <i class="hd-icon-modal fas fa-plus"></i>Chỉnh sửa sản phẩm</span>
            </div>
			<form action="/Project_LTWEB_2021/updateProduct?msp=${product.masp}" method="post">
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
                            <input id="masp" name="masp" type="text" class="modal-input" name="${product.masp}" value="${product.masp}">
                        </td>
                        <td class="modal-td">
                            <input id="name" name="name" type="text" class="modal-input" value="${product.name}">
                        </td>
                    </tr>

                    <tr class="row-modal-1">
                        <th class="modal-th">
                            <label for="category" class="modal-label">
                                Loại Sản Phẩm
                            </label>
                        </th>
                        <th class="modal-th">
                            <label for="price" class="modal-label">
                                Giá
                            </label>
                        </th>

                    </tr>

                    <tr class="row-modal-2">
                        <td class="modal-td">
                            <input id="category" name="category" type="text" class="modal-input" value="${product.category}">
                        </td>
                        <td class="modal-td">
                            <input id="price" name="price" type="text" class="modal-input" value="${product.price}">
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
                            <input id="imagelink" name="imagelink" type="text" class="modal-input" value="${product.imagelink}">
                        </td>
                        <td class="modal-td">
                            <input id="description" name="description" type="text" class="modal-input" value="${product.description}">
                        </td>
                    </tr>

                </table>
                <button id="modal-btn-edit" type="submit" class="site-btn login-btn">Sửa</button>
            </div>

            </form>

        </div>
    </div>
    <!--End Modal Eit-->

</body>
<%--  Main JS   -->--%>
<script src="${pageContext.request.contextPath}/views/admin/js/main.js"></script>


<script>
    const editCategoryBtn = document.querySelector('.js-btn-edit')
    const modalEdit = document.querySelector('.js-modal-edit')
    const modalCloseEdit = document.querySelector(' js-modal-close-edit')
    function showFormEditCategory(){
        modalEdit.classList.add('open')

    }
    function hideFormEditCategory(){
        modalEdit.classList.remove('open')
    }
    editCategoryBtn.addEventListener('click',showFormEditCategory)
    modalCloseEdit.addEventListener('click',hideFormEditCategory)

</script>
</html>