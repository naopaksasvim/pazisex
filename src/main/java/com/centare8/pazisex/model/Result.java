package com.centare8.pazisex.model;

import java.math.BigInteger;

public class Result {
private Integer questionID;
private String gameName;
private String answerText;
private String questionText;
private BigInteger numberOfAnswers;
public String getQuestionText() {
	return questionText;
}
public void setQuestionText(String questionText) {
	this.questionText = questionText;
}

public Integer getQuestionID() {
	return questionID;
}
public void setQuestionID(Integer questionID) {
	this.questionID = questionID;
}
public String getGameName() {
	return gameName;
}
public void setGameName(String gameName) {
	this.gameName = gameName;
}
public String getAnswerText() {
	return answerText;
}
public void setAnswerText(String answerText) {
	this.answerText = answerText;
}
public BigInteger getNumberOfAnswers() {
	return numberOfAnswers;
}
public void setNumberOfAnswers(BigInteger numberOfAnswers) {
	this.numberOfAnswers = numberOfAnswers;
}


}
