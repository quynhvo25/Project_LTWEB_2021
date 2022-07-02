package vn.edu.hcmuaf.fit.beans;

import java.io.Serializable;

public class Product implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String masp;
    private String name;
    private String category;
    private float price;
    private String imagelink;
    private String description;

    public Product(String masp, String name, String category, float price, String imagelink, String description) {
        super();
        this.masp = masp;
        this.name = name;
        this.category = category;
        this.price = price;
        this.imagelink = imagelink;
        this.description = description;
    }

    public Product() {

    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImagelink() {
        return imagelink;
    }

    public void setImagelink(String imagelink) {
        this.imagelink = imagelink;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

}
