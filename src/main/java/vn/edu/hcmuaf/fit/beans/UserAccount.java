package vn.edu.hcmuaf.fit.beans;

import java.io.Serializable;

public class UserAccount implements Serializable  {

    private static final long serialVersionUID = 1 ;
    private String userName;
    private String fullName;
    private String password;
    private String rePassword;
    private String address;
    private String numberPhone;



    public UserAccount(String userName, String fullName, String password, String rePassword, String address,
                       String numberPhone) {
        this.userName = userName;
        this.fullName = fullName;
        this.password = password;
        this.rePassword = rePassword;
        this.address = address;
        this.numberPhone = numberPhone;
    }
    public UserAccount() {

    }

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getRePassword() {
        return rePassword;
    }
    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getNumberPhone() {
        return numberPhone;
    }
    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }
    public static long getSerialversionuid() {
        return serialVersionUID;
    }



}
