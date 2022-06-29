package vn.edu.hcmuaf.fit.fit.dao;


import vn.edu.hcmuaf.fit.fit.beans.User;
import vn.edu.hcmuaf.fit.fit.db.DBConnect;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private static UserDao userDao;
    private UserDao(){

    }
    public static UserDao getInstance(){
        if(userDao == null){
           userDao = new UserDao();
        }
        return userDao;
    }
    // Lop Dao chi truy cap dl không kiểm tra được đúng sai
    // ket noi du lieu
    public User checkLogin(String username, String password){
        try {
          ResultSet resultSet = DBConnect.connect().executeQuery("SELECT * FROM user WHERE  tenDangNhap = '" + username +"'AND matKhau = '"+ password+"'");
            User user = null;
          if(resultSet.next()){
            user = new User();
            user.setTenDangNhap(resultSet.getString("tenDangNhap"));
            user.setHoten(resultSet.getString("hoten"));
        }
        if(user!=null && user.getTenDangNhap().equals(user.getTenDangNhap()) && !resultSet.next()){
            return user;

        }
          return null;
        } catch (SQLException | ClassNotFoundException e) {
         e.printStackTrace();
          return null;
        }
    }
    public boolean insertUser(String username, String pass, String name){
        try {
           int i = DBConnect.connect().executeUpdate("INSERT InTO user (username, pass, name) VALUE ('"+username+"','"+pass+"','"+name+"')");
        return i ==1;
        }catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
            return false;
        }
    }
}
//getrow(): đếm số dòng dữ liệu từ đầu đến dòng hiện tại