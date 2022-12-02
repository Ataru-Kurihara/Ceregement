package com.model;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private String secretId;
    private String mailAddress, newMailAddress;
    private String passWord, newPassWord;
    public User() {
        secretId = "";
        mailAddress = "";
        passWord = "";
        newMailAddress = "";
        newPassWord = "";
    }

    public String getSecretId() {
        return secretId;
    }

    public String getMailAddress() {
        return mailAddress;
    }

    public String getPassword() {
        return passWord;
    }
    public String getNewMailAddress() {return newMailAddress;}
    public String getNewPassWord() {return newPassWord;}
    public void setSecretId(String secretId) {
        secretId = secretId;
    }

    public void setMailAddress(String mailAddress) {
        this.mailAddress = mailAddress;
    }

    public void setPassword(String passWord) {
        this.passWord = passWord;
    }
    public void setNewMailAddress(String newMailAddress) {this.newMailAddress = newMailAddress;}
    public void setNewPassWord(String newPassWord) {this.newPassWord = newPassWord;}
}