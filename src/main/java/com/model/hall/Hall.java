package com.model.hall;

public class Hall {
    private String id;
    private String deadName;
    private String deathDay;
    private String address;
    private String hallName;
    private String funeralDay;
    public Hall() {
        id = "";
        deadName = "";
        deathDay = "";
        address = "";
        hallName = "";
        funeralDay = "";
    }
    public void setId(String id) {this.id = id;}
    public String getId() {return id;}
    public void setDeadName(String deadName) {this.deadName = deadName;}
    public String getDeadName() {return deadName;}
    public void setDeathDay(String deathDay) {this.deathDay = deathDay;}
    public String getDeathDay() {return deathDay;}
    public void setAddress(String address) {this.address = address;}
    public String getAddress() {return address;}
    public void setHallName(String hallName) {this.hallName = hallName;}
    public String getHallName() {return hallName;}
    public void setFuneralDay(String funeralDay) {this.funeralDay = funeralDay;}
    public String getFuneralDay() {return funeralDay;}
}
