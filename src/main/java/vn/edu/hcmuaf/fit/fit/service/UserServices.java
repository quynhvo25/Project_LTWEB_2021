package vn.edu.hcmuaf.fit.fit.service;


import vn.edu.hcmuaf.fit.fit.beans.User;
import vn.edu.hcmuaf.fit.fit.dao.UserDao;

import java.util.HashMap;
import java.util.Map;

public class UserServices {
    private static UserServices instance;

    private UserServices(){

    }
    private static Map<String, String> users = new HashMap<>();
    static {
        users.put("admin","admin");
    }
    public static UserServices getInstance(){
        if(instance == null){
            instance = new UserServices();

        }
        return instance;
    }
    public  boolean checkLogin(String username, String password){
       User user = UserDao.getInstance().checkLogin(username,password);

            return user!=null;
        }

    public boolean register(String username, String fullname, String address, String phone, String pass) {
     return UserDao.getInstance().insertUser(username, pass, "");

    }

}
