package com.centare8.pazisex.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Game")
public class GameEntity {
	@Id
	@Column(name = "gameID", nullable = false)
	private int gameID;
	@Column(name = "gameName", nullable = false)
	private String gameName;
	@Column(name = "durationMinutes", nullable = false)
	private int durationMin;

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
}
