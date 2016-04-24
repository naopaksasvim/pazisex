package com.centare8.pazisex.services;

import java.util.List;

import com.centare8.pazisex.entities.GameEntity;
import com.centare8.pazisex.model.Game;

public interface GameService {

	public List<GameEntity> getAll();

	public Game getGame(int id);
	
}
