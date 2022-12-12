package com.model.organizer;

import java.io.Serializable;
import java.sql.Struct;

public class Organizer implements Serializable {
    private String id;
    private String mailAddress;
    private String name;
    private String address;
    private String tel;
    private String postalcode;
    public Organizer() {
        id = "";
        mailAddress = "";
        name = "";
        address = "";
        tel = "";
        postalcode = "";
    }
    public String getId() {return id;}
    public String getMailAddress() {return mailAddress;}
    public String getName() {return name;}
    public String getAddress() {return address;}
    public String getTel() {return tel;}
    public String getPostalCode() {return postalcode;}

    public void setMailAddress(String mailAddress) {this.mailAddress = mailAddress;}
    public void setId(String id) {this.id = id;}
    public void setName(String name) {this.name = name;}
    public void setAddress(String address) {this.address = address;}
    public void setTel(String tel) {this.tel = tel;}
    public void setPostalcode(String postalcode) {this.postalcode = postalcode;}

}
