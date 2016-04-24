package com.centare8.pazisex.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.centare8.pazisex.entities.UserResultEntity;
import com.centare8.pazisex.repositories.UserResultRepository;
import com.centare8.pazisex.services.UserResultService;

@Service
public class DefaultUserResultService implements UserResultService{
	@Autowired
	UserResultRepository userResultRepository;
	
	
	@Override
	public void saveListOfResult(List<UserResultEntity> results) {
		userResultRepository.save(results);
		
	}
	
}
