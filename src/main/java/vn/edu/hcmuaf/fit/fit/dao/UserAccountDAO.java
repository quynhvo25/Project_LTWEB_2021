package vn.edu.hcmuaf.fit.fit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vn.edu.hcmuaf.fit.fit.beans.UserAccount;

public class UserAccountDAO {

    public int registerUserAccount(UserAccount userAccount) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO useraccount"
                + "  (id, username, fullname, password, repassword, address, numberphone) VALUES "
                + " (?, ?, ?, ?, ?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltwebbasicq?useSSL=false",
                "root", "tienNguye1n");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, 1);
            preparedStatement.setString(2, userAccount.getUserName());
            preparedStatement.setString(3, userAccount.getFullName());
            preparedStatement.setString(4, userAccount.getPassword());
            preparedStatement.setString(5, userAccount.getRePassword());
            preparedStatement.setString(6, userAccount.getAddress());
            preparedStatement.setString(7, userAccount.getNumberPhone());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception

        }
        return result;
    }

    public static UserAccount findUser(Connection conn, //
                                       String userName, String password) throws SQLException {

        String sql = "Select a.username, a.password from useraccount a " //
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