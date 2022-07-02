package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.service.ProductService;

@WebServlet(urlPatterns = { "/deleteProduct" })
public class ProductAdminDeleteController extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private ProductService productService = new ProductService();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {




        String masp = (String) req.getParameter("masp");

        String errorString = null;

        try {
            productService.deleteProduct(masp);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        // Nếu có lỗi, forward (chuyển tiếp) sang trang thông báo lỗi.
        if (errorString != null) {
            // Lưu thông tin vào request attribute trước khi forward sang views.
            req.setAttribute("errorString", errorString);
            //
            RequestDispatcher dispatcher = req.getServletContext()
                    .getRequestDispatcher("/views/admin/index.jsp");
            dispatcher.forward(req, resp);
        }
        // Nếu mọi thứ tốt đẹp.
        // Redirect (chuyển hướng) sang trang danh sách sản phẩm.
        else {
            resp.sendRedirect(req.getContextPath() + "/Product_Controller");
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
