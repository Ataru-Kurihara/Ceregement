package com.model.tempUser;

public class TempUser {

	private String id;
	private String regNumber;
	private String ceregementId;

	public TempUser() {
		id = "";
		regNumber = "";
		ceregementId = "";
	}

	public String getEmail() {
		return id;
	}

	public void setEmail(String id) {
		this.id = id;
	}

	public String getRegNumber() {
		return regNumber;
	}

	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}

	public String getCeregementId() {
		return ceregementId;
	}

	public void setCeregementId(String ceregementId) {
		this.ceregementId = ceregementId;
	}

}
