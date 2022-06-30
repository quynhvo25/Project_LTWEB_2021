package vn.edu.hcmuaf.fit.fit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.fit.dao.UserAccountDAO;
import vn.edu.hcmuaf.fit.fit.beans.UserAccount;

@WebServlet(name = "Register", urlPatterns = "/Register")
public class Register extends HttpServlet {

    private static final long serialVersionUID = 1;
    private UserAccountDAO userAccountDAO = new UserAccountDAO();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //todo doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String fullName = request.getParameter("fullname");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");


        UserAccount userAccount = new UserAccount();
        userAccount.setUserName(username);
        userAccount.setFullName(fullName);
        userAccount.setPassword(pass);
        userAccount.setRePassword(repass);
        userAccount.setAddress(address);
        userAccount.setNumberPhone(phone);

        try {
            userAccountDAO.registerUserAccount(userAccount);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("views/user/login.jsp");
    }
}
