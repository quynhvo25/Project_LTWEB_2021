package vn.edu.hcmuaf.fit.service;

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
        if(users.containsKey(username) && users.get(username).equals(password)){
            return true;
        }
        return false;
    }
    public boolean register(String username, String fullname, String address, String phone, String pass) {
        if (users.containsKey(username)) {
            return false;
        } else {
            users.put(username, pass);
        }
        return true;
    }

}
