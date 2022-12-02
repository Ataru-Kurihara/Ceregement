package com.model;

import java.io.Serializable;

public class Organizer implements Serializable {
    private String id;
    private String mailAddress;
    private String name;
    private String address;
    private String tel;
    public Organizer() {
        id = "";
        mailAddress = "";
        name = "";
        address = "";
        tel = "";
    }
    public String getId() {return id;}
    public String getMailAddress() {return mailAddress;}
    public String getName() {return name;}
    public String getAddress() {return address;}
    public String getTel() {return tel;}

    public void setMailAddress(String mailAddress) {mailAddress = mailAddress;}
    public void setId(String id) {id = id;}
    public void setName(String name) {name = name;}
    public void setAddress(String address) {address = address;}
    public void setTel(String tel) {tel = tel;}

}
