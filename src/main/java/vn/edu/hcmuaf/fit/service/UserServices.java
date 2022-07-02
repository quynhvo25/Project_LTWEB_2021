package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.beans.UserAccount;
import vn.edu.hcmuaf.fit.dao.UserAccountDAO;
public class UserServices {
    private  UserAccountDAO userAccountDAO = new UserAccountDAO();

    public int registerUserAccount(UserAccount userAccount) throws ClassNotFoundException {
        return userAccountDAO.registerUserAccount(userAccount);
    }

}
