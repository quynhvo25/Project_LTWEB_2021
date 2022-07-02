package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vn.edu.hcmuaf.fit.beans.UserAccount;

public class UserAccountDAO {

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/ltwebbasic?useSSL=false";
            String user = "root";
            String password = "";
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            return null;

        }

    }

    public int registerUserAccount(UserAccount userAccount) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO useraccount"
                + "  (username, fullname, password, repassword, address, numberphone) VALUES "
                + " (?, ?, ?, ?,?,?);";

        int result = 0;

        Connection connection = getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setString(1, userAccount.getUserName());
            preparedStatement.setString(2, userAccount.getFullName());
            preparedStatement.setString(3, userAccount.getPassword());
            preparedStatement.setString(4, userAccount.getRePassword());
            preparedStatement.setString(5, userAccount.getAddress());
            preparedStatement.setString(6, userAccount.getNumberPhone());

            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;

    }

    public static UserAccount findUser(Connection conn,
                                       String userName, String password) throws SQLException {

        String sql = "Select a.username, a.password from useraccount a "
                + " where a.username = ? and a.password= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            UserAccount user = new UserAccount();
            user.setUserName(userName);
            user.setPassword(password);
            return user;
        }
        return null;
    }


}