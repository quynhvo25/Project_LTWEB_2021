package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.UserAccountDAO;

import java.sql.Connection;
import java.sql.SQLException;

public class UserServices {
    private  UserAccountDAO userAccountDAO = new UserAccountDAO();

    public int registerUserAccount(Connection connection, UserAccount userAccount) throws ClassNotFoundException {
        return userAccountDAO.registerUserAccount(connection,userAccount);
    }

    public boolean checkLogin(Connection conn, String username, String pass) throws SQLException {

        return userAccountDAO.checkLogin(conn,username, pass);
    }

}
