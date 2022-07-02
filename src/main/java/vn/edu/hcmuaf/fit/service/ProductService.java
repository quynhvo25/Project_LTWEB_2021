package vn.edu.hcmuaf.fit.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

public class ProductService {
    private ProductDAO productDAO = new ProductDAO();


    public void deleteProduct(Connection connection,String masp) throws SQLException {
        productDAO.deleteProduct(connection,masp);
    }

    public void insertProduct(Connection connection,Product product) throws SQLException {
        productDAO.insertProduct(connection,product);

    }

    public List<Product> queryProduct(Connection connection) throws SQLException {
        return productDAO.queryProduct(connection);

    }

    public void updateProduct( Connection connection, Product product) throws SQLException {
        productDAO.updateProduct(connection,product);
    }

    public Product findProduct(Connection connection, String masp) throws SQLException {
        return productDAO.findProduct(connection,masp);
    }

}
