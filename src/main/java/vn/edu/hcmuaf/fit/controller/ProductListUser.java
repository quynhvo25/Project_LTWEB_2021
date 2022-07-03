package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Product-list", urlPatterns = "/Product-list")
public class ProductListUser  extends HttpServlet {
    private ProductService productService = new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String errorString = null;
        List<Product> list = null;
        try {
            Connection connection = DBConnect.getConnection();
            list = productService.queryProduct(connection);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        request.setAttribute("errorString", errorString);
        request.setAttribute("productList", list);


        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/views/user/list-product.jsp");
        dispatcher.forward(request, response);

    }



}
