package com.centare8.pazisex.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.centare8.pazisex.entities.GameEntity;
import com.centare8.pazisex.entities.UserResultEntity;
import com.centare8.pazisex.model.Result;
import com.centare8.pazisex.repositories.UserResultRepository;
import com.centare8.pazisex.services.UserResultService;

@Service
public class DefaultUserResultService implements UserResultService{
	@Autowired
	UserResultRepository userResultRepository;
	
	
	@Override
	@Transactional
	public void saveListOfResult(List<UserResultEntity> results) {
		userResultRepository.save(results);
		
	}
	
	@Override
	public List<Result> getAllResults() {
		List<Object[]> resultSet = userResultRepository.getAllResults();
		List<Result> result = new ArrayList<Result>();
		for(Object[] resultSetItem : resultSet){
			Result resultEntity = new Result();
			resultEntity.setQuestionID((Integer)resultSetItem[0]);
			resultEntity.setGameName((String)resultSetItem[1]);
			resultEntity.setQuestionText((String)resultSetItem[3]);
			resultEntity.setNumberOfAnswers((Integer)resultSetItem[2]);
			result.add(resultEntity);
	
		}
		
		
		
		return result;
	}
	
}
