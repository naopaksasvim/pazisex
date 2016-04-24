package com.centare8.pazisex.model;

import java.util.List;

public class Game {
 private int gameID;
 private String gameName;
 private int durationMin;
 private List<Question> questions;

 public int getGameID() {
	return gameID;
}
public void setGameID(int gameID) {
	this.gameID = gameID;
}
public String getGameName() {
	return gameName;
}
public void setGameName(String gameName) {
	this.gameName = gameName;
}
public int getDurationMin() {
	return durationMin;
}
public void setDurationMin(int durationMin) {
	this.durationMin = durationMin;
}
public List<Question> getQuestions() {
	return questions;
}
public void setQuestions(List<Question> questions) {
	this.questions = questions;
}


 
 
}
