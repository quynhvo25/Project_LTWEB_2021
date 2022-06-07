package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.service.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String username = request.getParameter("username");
       String password = request.getParameter("password");

       if(UserServices.getInstance().checkLogin(username,password)){
           response.sendRedirect("http://localhost:8080/Project_LTWEB_2021/Home");
       } else {
           request.setAttribute("error","Username or password is incorrect");
           request.getRequestDispatcher("/views/user/login.jsp").forward(request,response);
       }
    }


    

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }
}
