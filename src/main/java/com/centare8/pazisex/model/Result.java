package com.centare8.pazisex.model;

public class Result {
private Integer questionID;
private String gameName;
private String answerText;
private String questionText;
public String getQuestionText() {
	return questionText;
}
public void setQuestionText(String questionText) {
	this.questionText = questionText;
}
private Integer numberOfAnswers;
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
public Integer getNumberOfAnswers() {
	return numberOfAnswers;
}
public void setNumberOfAnswers(Integer numberOfAnswers) {
	this.numberOfAnswers = numberOfAnswers;
}


}
