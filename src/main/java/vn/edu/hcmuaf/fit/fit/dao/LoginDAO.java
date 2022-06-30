package vn.edu.hcmuaf.fit.fit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/ltwebbasicq?useSSL=false";
            String user = "root";
            String password = "";
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            return null;

        }

    }



    public boolean checkLogin(String username, String pass) throws SQLException {

        boolean isvalid = false;

        String sql = "SELECT * FROM useraccount WHERE username = ? and password= ?";
        // open connection
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {

                statement = connection.prepareStatement(sql);

                statement.setString(1, username);
                statement.setString(2, pass);

                ResultSet status = statement.executeQuery();
                if (status.next()) {
                    isvalid = true;
                } else {
                    isvalid = false;
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                connection.close();
                statement.close();
            }

        }
        return isvalid;

    }

}
