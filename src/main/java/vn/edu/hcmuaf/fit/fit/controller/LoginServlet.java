package vn.edu.hcmuaf.fit.fit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.hcmuaf.fit.fit.service.LoginService;

@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    /**
     *
     */
    private LoginService loginService = new LoginService();
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        try {

            String username = req.getParameter("username");
            String pass = req.getParameter("password");

            if (username.equals("admin") && pass.equals("admin")) {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/index.jsp");
                dispatcher.forward(req, resp);

            } else {
                boolean isvalid;

                isvalid = loginService.checkLogin(username, pass);

                if (isvalid) {
                    HttpSession session = req.getSession();
                    session.setAttribute("dangnhapthanhcong", username);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/index.jsp");
                    dispatcher.forward(req, resp);
                } else {
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/user/login.jsp");
                    dispatcher.forward(req, resp);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
