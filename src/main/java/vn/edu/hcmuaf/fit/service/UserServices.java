package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.UserAccountDAO;

import java.sql.Connection;

public class UserServices {
    private  UserAccountDAO userAccountDAO = new UserAccountDAO();

    public int registerUserAccount(Connection connection, UserAccount userAccount) throws ClassNotFoundException {
        return userAccountDAO.registerUserAccount(connection,userAccount);
    }

}
