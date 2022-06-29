package vn.edu.hcmuaf.fit.fit.dao;


import vn.edu.hcmuaf.fit.fit.beans.Product;
import vn.edu.hcmuaf.fit.fit.db.DBJDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    private static ProductDao instance;

    private ProductDao() {

    }

    public static ProductDao getInstance() {
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

    public List<Product> getAll() {
        return DBJDBIConnector.get().withHandle(hangle -> {
            return hangle.createQuery("select * from  sanpham").mapToBean(Product.class).stream().collect(Collectors.toList());

        });
    }
}
