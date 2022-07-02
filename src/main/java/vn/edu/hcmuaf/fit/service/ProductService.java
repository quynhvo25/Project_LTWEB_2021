package vn.edu.hcmuaf.fit.service;

import java.sql.SQLException;
import java.util.List;

import vn.edu.hcmuaf.fit.beans.Product;
import vn.edu.hcmuaf.fit.dao.ProductDAO;

public class ProductService {
    private ProductDAO productDAO = new ProductDAO();


    public void deleteProduct(String masp) throws SQLException {
        productDAO.deleteProduct(masp);
    }

    public void insertProduct(Product product) throws SQLException {
        productDAO.insertProduct(product);

    }

    public List<Product> queryProduct() throws SQLException {
        return productDAO.queryProduct();

    }

    public void updateProduct( Product product) throws SQLException {
        productDAO.updateProduct(product);
    }

    public Product findProduct(String masp) throws SQLException {
        return productDAO.findProduct(masp);
    }

}
