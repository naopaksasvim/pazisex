package com.centare8.pazisex.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User")
public class UserEntity {
	@Id 
	@GeneratedValue
	@Column(name = "userID", nullable = false)
	private int userID;
	@Column(name = "name", nullable = false)
	 private String name;
	@Column(name = "lastName", nullable = false)
	 private String lastName;
	@Column(name = "city", nullable = false)
	 private String city;
	@Column(name = "dateOfBirth", nullable = false)
	 private Date dateOfBirth;
	@Column(name = "email", nullable = false)
	 private String email;
	@Column(name = "facebook", nullable = false)
	 private String facebook;
	@Column(name = "twitter", nullable = false)
	 private String twitter;
	@Column(name = "instagram", nullable = false)
	 private String instagram;
	
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getInstagram() {
		return instagram;
	}
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
	
	
}
