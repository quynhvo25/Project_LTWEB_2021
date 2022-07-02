<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

     <!--Modal ADD2-->
    <div class="modal-add js-modal">
        <div class="modal-container">
            <div class="modal-close js-modal-close">
                <i class="fas fa-close"></i>
            </div>

            <div class="header-modal-add">
               <span class="header-title">
                   <i class="hd-icon-modal fas fa-plus"></i>ThÃªm sáº£n pháº©m</span>
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
                            <input id="masp" name="masp" type="text" class="modal-input" placeholder="${product.masp}">
                        </td>
                        <td class="modal-td">
                            <input id="name" name="name" type="text" class="modal-input" placeholder="${product.name}">
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
                            <input id="category" name="category" type="text" class="modal-input" placeholder="${product.category}">
                        </td>
                        <td class="modal-td">
                            <input id="price" name="price" type="text" class="modal-input" placeholder="${product.price}">
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
                            <input id="imagelink" name="imagelink" type="text" class="modal-input" placeholder="${product.imagelink}">
                        </td>
                        <td class="modal-td">
                            <input id="description" name="description" type="text" class="modal-input" placeholder="${product.description}">
                        </td>    
                    </tr>

                </table>              
                <button id="modal-btn-add" type="submit" class="site-btn login-btn"><i class="hd-icon-modal fas fa-plus"></i>Sửa</button>
            </div>
            
            </form>

        </div>
    </div>
    <!--End Modal ADD--> 
    
</body>
</html>