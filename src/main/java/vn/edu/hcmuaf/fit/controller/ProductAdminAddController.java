package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.service.ProductService;

@WebServlet(urlPatterns = { "/addProduct" })
public class ProductAdminAddController extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private ProductService productService = new ProductService();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String masp = (String) req.getParameter("masp");
        String name = (String) req.getParameter("name");
        String category = (String) req.getParameter("category");
        String priceStr = (String) req.getParameter("price");
        String imagelink = (String) req.getParameter("imagelink");
        String description = (String) req.getParameter("description");
        float price = 0;
        try {
            price = Float.parseFloat(priceStr);
        } catch (Exception e) {
        }
        Product product = new Product(masp, name, category, price, imagelink, description);

        String errorString = null;

        if (errorString == null) {
            try {
                Connection connection = DBConnect.getConnection();
                productService.insertProduct(connection,product);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }

        req.setAttribute("errorString", errorString);
        req.setAttribute("product", product);


        if (errorString != null) {
            RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/views/admin/index.jsp");
            dispatcher.forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/Product_Controller");
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
