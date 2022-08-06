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

@WebServlet(name = "Home", urlPatterns = "/Home")
public class Home extends HttpServlet {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private ProductService productService = new ProductService();
    private Product product = new Product();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {

        String errorString = null;
//        tao 1 list product
        List<Product> list = null;
        try {
//            lay 1 connection
            Connection connection = DBConnect.getConnection();
//            chay ham query product va truyen vao connection
            list = productService.queryProduct(connection);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        request.setAttribute("errorString", errorString);
        request.setAttribute("productList", list);


        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/index.jsp");
        dispatcher.forward(request, response);

    }
}
