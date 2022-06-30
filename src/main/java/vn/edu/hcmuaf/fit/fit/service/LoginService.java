package vn.edu.hcmuaf.fit.fit.service;

import java.sql.SQLException;

import vn.edu.hcmuaf.fit.fit.dao.LoginDAO;


public class LoginService {
    private LoginDAO loginDAO = new LoginDAO();

    public boolean checkLogin(String username, String pass) throws SQLException {

        return loginDAO.checkLogin(username, pass);
    }
}
