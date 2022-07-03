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

@WebServlet(urlPatterns = { "/productDetail" })
public class ProductDetail extends HttpServlet {

    private ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String masp = (String) req.getParameter("masp");
        Product product = null;
        String errorString = null;

        try {
            Connection connection = DBConnect.getConnection();
            product = productService.findProduct(connection,masp);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }


        if (errorString != null && product == null) {
            resp.sendRedirect(req.getServletPath() + "/Product-list");
            return;
        }


        req.setAttribute("errorString", errorString);
        req.setAttribute("product", product);

        RequestDispatcher dispatcher = req.getServletContext()
                .getRequestDispatcher("/views/user/product.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
