package com.centare8.pazisex.services;

import java.util.List;

import com.centare8.pazisex.entities.UserResultEntity;

import com.centare8.pazisex.model.Result;

public interface UserResultService {

	void saveListOfResult(List<UserResultEntity> results);
	
	public List<Result> getAllResults();


}
