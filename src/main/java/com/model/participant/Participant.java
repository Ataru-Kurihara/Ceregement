package com.model.participant;

public class Participant {
    private String id;
    private String mailAddress;
    private String fullName;
    private String tel;
    private String postalCode;
    private String detailAddress;
    private String gift;
    private String attend;

    public Participant() {
        id = "";
        mailAddress = "";
        fullName = "";
        tel = "";
        postalCode = "";
        detailAddress = "";
        gift = "";
        attend = "";
    }

    public void setId(String id) {this.id = id;}
    public String getId() {return id;}
    public void setMailAddress(String mailAddress) {this.mailAddress = mailAddress;}
    public String getMailAddress() {return mailAddress;}
    public void setFullName(String fullName) {this.fullName = fullName;}
    public String getFullName() {return fullName;}

    public void setTel(String tel) {this.tel = tel;}
    public String getTel() {return tel;}
    public void setPostalCode(String postalCode) {this.postalCode = postalCode;}
    public String getPostalCode() {return postalCode;}
    public void setDetailAddress(String detailAddress) {this.detailAddress = detailAddress;}
    public String getDetailAddress() {return detailAddress;}
    public void setGift(String gift) {this.gift = gift;}
    public String getGift() {return gift;}
    public void setAttend(String attend) {this.attend = attend;}
    public String getAttend() {return attend;}

}
