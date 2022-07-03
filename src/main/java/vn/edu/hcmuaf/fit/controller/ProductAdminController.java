package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.service.ProductService;

@WebServlet(urlPatterns = { "/Product_Controller" })
public class ProductAdminController extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private ProductService productService = new ProductService();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        String errorString = null;
        List<Product> list = null;
        try {
            Connection connection = DBConnect.getConnection();
            list = productService.queryProduct(connection);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        req.setAttribute("errorString", errorString);
        req.setAttribute("productList", list);


        RequestDispatcher dispatcher = req.getServletContext()
                .getRequestDispatcher("/views/admin/product.jsp");
        dispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
