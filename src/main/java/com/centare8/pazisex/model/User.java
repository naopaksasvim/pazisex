package com.centare8.pazisex.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User {


	private int userID;
	private String name;
	private String lastName;
	@DateTimeFormat(pattern = "yyyy-MM-dd") 
	private Date dateOfBirth;
	private String city;
	private String eMail;
	private String facebook;
	private String twitterName;
	private String instagramName;

	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitterName() {
		return twitterName;
	}
	public void setTwitterName(String twitterName) {
		this.twitterName = twitterName;
	}
	public String getInstagramName() {
		return instagramName;
	}
	public void setInstagramName(String instagramName) {
		this.instagramName = instagramName;
	}
	
	
}
