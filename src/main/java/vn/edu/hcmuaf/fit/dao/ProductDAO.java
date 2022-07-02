package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vn.edu.hcmuaf.fit.beans.Product;

public class ProductDAO {


    public  Connection getConnection() {
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
    /*show danh sach san Pham*/
    public List<Product> queryProduct(Connection connection) throws SQLException {
        String sql = "Select a.masp, a.name, a.category, a.price, a.imagelink, a.description from product a ";

//        Connection conn = getConnection();
        PreparedStatement pstm = connection.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            String masp = rs.getString("masp");
            String name = rs.getString("name");
            String category = rs.getString("category");
            float price = rs.getFloat("price");
            String imagelink = rs.getString("imagelink");
            String description = rs.getString("description");

            Product product = new Product();
            product.setMasp(masp);
            product.setName(name);
            product.setCategory(category);
            product.setPrice(price);
            product.setImagelink(imagelink);
            product.setDescription(description);
            list.add(product);
        }
        return list;
    }

    /*them san pham*/
    public void insertProduct(Connection connection,Product product) throws SQLException {
        String sql = "Insert into product(masp, name, category, price, imagelink, description) values (?,?,?,?,?,?)";
//        Connection conn = getConnection();

        PreparedStatement pstm = connection.prepareStatement(sql);

        pstm.setString(1, product.getMasp());
        pstm.setString(2, product.getName());
        pstm.setString(3, product.getCategory());
        pstm.setFloat(4, product.getPrice());
        pstm.setString(5, product.getImagelink());
        pstm.setString(6, product.getDescription());

        pstm.executeUpdate();
    }
    /*chinh sua san pham*/
    public void updateProduct(Connection connection, Product product) throws SQLException {
        String sql = "Update product set name =?, category=?, price=?, imagelink=?, description=? where masp=? ";

        PreparedStatement pstm = connection.prepareStatement(sql);

        pstm.setString(1, product.getName());
        pstm.setString(2, product.getCategory());
        pstm.setFloat(3, product.getPrice());
        pstm.setString(4, product.getImagelink());
        pstm.setString(5, product.getDescription());
        pstm.executeUpdate();
    }

    /*xoa san pham*/
    public void deleteProduct(Connection connection,String masp) throws SQLException {
        String sql = "Delete From product where masp= ?";
//        Connection conn = getConnection();

        PreparedStatement pstm = connection.prepareStatement(sql);

        pstm.setString(1, masp);

        pstm.executeUpdate();
    }
    /*tim san pham theo ma san pham*/
    public Product findProduct( Connection connection,String masp) throws SQLException {
        String sql = "Select masp, name, category, price, imagelink, description from product  where masp=?";


        PreparedStatement pstm = connection.prepareStatement(sql);
        pstm.setString(1, masp);

        ResultSet rs = pstm.executeQuery();

        while (rs.next()) {
            String name = rs.getString("name");
            String category = rs.getString("category");
            float price = rs.getFloat("price");
            String imagelink = rs.getString("imagelink");
            String description = rs.getString("description");
            Product product = new Product(masp, name, category, price, imagelink, description);
            return product;
        }
        return null;
    }
}
