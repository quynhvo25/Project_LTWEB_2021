package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.service.UserServices;

@WebServlet(name = "Register", urlPatterns = "/Register")
public class Register extends HttpServlet {

    private static final long serialVersionUID = 1;
    private UserServices userServices = new UserServices();


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String fullName = request.getParameter("fullname");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");

        if(pass.equals(repass)){
            UserAccount userAccount = new UserAccount();
            userAccount.setUserName(username);
            userAccount.setFullName(fullName);
            userAccount.setPassword(pass);
            userAccount.setRePassword(repass);
            userAccount.setAddress(address);
            userAccount.setNumberPhone(phone);

            try {
                Connection connection = DBConnect.getConnection();
                userServices.registerUserAccount(connection, userAccount);

            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect("views/user/login.jsp");
        }else {
            request.setAttribute("error", "error");
        }

    }
}
