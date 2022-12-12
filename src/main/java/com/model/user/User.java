package com.model.user;

import java.io.Serializable;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private String secretId;
	private String mailAddress;
	private String passWord;
	private String regNumber;

	public User() {
		secretId = "";
		mailAddress = "";
		passWord = "";
		regNumber = "";
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

	public String getRegNumber() {
		return regNumber;
	}

	public void setSecretId(String secretId) {
		this.secretId = secretId;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public void setPassword(String passWord) {
		this.passWord = passWord;
	}

	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}
}