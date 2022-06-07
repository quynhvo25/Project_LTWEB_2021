package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.service.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register", urlPatterns = "/Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //todo doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        if(UserServices.getInstance().register(username,fullname,address,phone,pass)){
            response.sendRedirect("http://localhost:8080/Project_LTWEB_2021/LoginServlet");
        } else {
            //add error message

            request.getRequestDispatcher("/views/user/register.jsp").forward(request,response);
        }
    }
}
