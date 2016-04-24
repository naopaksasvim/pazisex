package com.centare8.pazisex.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "userResult")
public class UserResultEntity {

	@Id 
	@GeneratedValue
	@Column(name = "userResultID", nullable = false)
	private Integer userResultID;
	@Column(name = "userID", nullable = false)
	private int userID;
	@Column(name = "questionID", nullable = false)
	private int questionID;
	@Column(name = "answerID", nullable = false)
	private int answerID;
	@Column(name = "creationDate", nullable = false)
	private Date creationDate;
	
	public Integer getUserResultID() {
		return userResultID;
	}
	public void setUserResultID(Integer userResultID) {
		this.userResultID = userResultID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
	public int getAnswerID() {
		return answerID;
	}
	public void setAnswerID(int answerID) {
		this.answerID = answerID;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	
}
