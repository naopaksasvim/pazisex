package com.centare8.pazisex.model;

import java.util.List;

public class Question {

	private int questionID;
	private String questionText;
	private List<Answer> answers;
	private int usersAnswer;
	public int getUsersAnswer() {
		return usersAnswer;
	}
	public void setUsersAnswer(int usersAnswer) {
		this.usersAnswer = usersAnswer;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
	public String getQuestionText() {
		return questionText;
	}
	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}
	public List<Answer> getAnswers() {
		return answers;
	}
	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}
	
	
}
