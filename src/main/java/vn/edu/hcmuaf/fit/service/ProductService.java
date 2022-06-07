package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.beans.Product;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ProductService {
    private static ProductService instance;
    Map<String,Product> productMap = new HashMap<>();
    {
        productMap.put("sp1",new Product(1,"Cardigan Emotion","...",200000,185000,1,"http://localhost:8080/Project_LTWEB_2021/views/user/img/cardigan/cardigan_in_may.jpg"));
    }


    public static ProductService getInstance(){
        if ((instance ==null)){
            instance = new ProductService();
        }
        return instance;
    }
    private ProductService(){

    }
    public List<Product> getAll(){
        return new LinkedList<>(productMap.values());

    }
}
