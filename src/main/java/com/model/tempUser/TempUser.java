package com.model.tempUser;

public class TempUser {

	private String id;
	private String regNumber;

	public TempUser() {
		id = "";
		regNumber = "";
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

}
