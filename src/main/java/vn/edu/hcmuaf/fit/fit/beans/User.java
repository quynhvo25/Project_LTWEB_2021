package vn.edu.hcmuaf.fit.fit.beans;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private String tenDangNhap;
    private String matKhau;
    private String email;
    private String hoten;
    private String rde;
    // none cóntructor
    public User(){

    }
    // full constructor


    public User(String tenDangNhap, String matKhau, String email, String hoten, String rde) {
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.email = email;
        this.hoten = hoten;
        this.rde = rde;
    }
    // getter and setter

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getRde() {
        return rde;
    }

    public void setRde(String rde) {
        this.rde = rde;
    }
}
