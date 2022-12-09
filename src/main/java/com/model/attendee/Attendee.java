package com.model.attendee;

public class Attendee {
    private String id;
    private String mailAddress;
    private String familyName;
    private String firstName;
    private String tel;
    private String postalCode;
    private String detailAddress;
    private String gift;
    private boolean participation;

    public Attendee() {
        id = "";
        mailAddress = "";
        familyName = "";
        firstName = "";
        tel = "";
        postalCode = "";
        detailAddress = "";
        gift = "";
        participation = true;
    }

    public void setId(String id) {this.id = id;}
    public String getId() {return id;}
    public void setMailAddress(String mailAddress) {this.mailAddress = mailAddress;}
    public String getMailAddress() {return mailAddress;}
    public void setFamilyName(String familyName) {this.familyName = familyName;}
    public String getFamilyName() {return familyName;}
    public void setFirstName(String firstName) {this.firstName = firstName;}
    public String getFirstName() {return firstName;}
    public void setTel(String tel) {this.tel = tel;}
    public String getTel() {return tel;}
    public void setPostalCode(String postalCode) {this.postalCode = postalCode;}
    public String getPostalCode() {return postalCode;}
    public void setDetailAddress(String detailAddress) {this.detailAddress = detailAddress;}
    public String getDetailAddress() {return detailAddress;}
    public void setGift(String gift) {this.gift = gift;}
    public String getGift() {return gift;}
    public void setParticipation(boolean participation) {this.participation = participation;}
    public boolean isParticipation() {return participation;}

}
