package com.centare8.pazisex.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.centare8.pazisex.entities.GameEntity;
import com.centare8.pazisex.model.Answer;
import com.centare8.pazisex.model.Code;
import com.centare8.pazisex.model.Game;
import com.centare8.pazisex.model.Question;
import com.centare8.pazisex.repositories.GameRepository;
import com.centare8.pazisex.services.GameService;

@Service
public class DefaultGameService implements GameService {

	@Autowired
	GameRepository gameRepository;

	@Override
	@Transactional
	public List<GameEntity> getAll() {
		List<Object[]> resultSet = gameRepository.getAllGames();
		List<GameEntity> result = new ArrayList<GameEntity>();
		for(Object[] resultSetItem : resultSet){
			GameEntity gameEntity = new GameEntity();
			gameEntity.setGameID((int)resultSetItem[0]);
			gameEntity.setGameName((String)resultSetItem[1]);
			gameEntity.setDurationMin((int)resultSetItem[2]);
			result.add(gameEntity);
	
		}
		
		
		
		return result;
	}
	
	
	public Game getGame(int gameID){
		List<Object[]> gameResultSet=gameRepository.getGame(gameID);
		Game result = new Game();
		for(Object[] resultSetItem : gameResultSet){
		result.setGameID((int)resultSetItem[0]);
		result.setGameName((String)resultSetItem[1]);
		result.setDurationMin((int)resultSetItem[2]);
		}
		List<Question> questions=new ArrayList<Question>();
		List<Object[]> quetionResultSet=gameRepository.getQuestionsForGame(gameID);
		for(Object[] resultSetItem : quetionResultSet){
			Question quest=new Question();
			quest.setQuestionID((int)resultSetItem[0]);
			quest.setQuestionText((String)resultSetItem[1]);
			List<Object[]> answerResultSet=gameRepository.getAnswersForQuestion(quest.getQuestionID());
			List<Answer> answers=new ArrayList<Answer>();
			for(Object[] answerResultSetItem : answerResultSet){
				Answer answer = new Answer();
				answer.setAnswerID((int)answerResultSetItem[0]);
				answer.setAnswerText((String)answerResultSetItem[2]);
				answer.setIsCorrect((Boolean)answerResultSetItem[3]);
				answers.add(answer);
			}
			quest.setAnswers(answers);
			questions.add(quest);
		}
		result.setQuestions(questions);
		return result;
}
	public List<Code> getCodes() {
		List<Object[]> resultSet = gameRepository.getCodes();
		List<Code> result = new ArrayList<Code>();
		for(Object resultSetItem : resultSet){
			Code code = new Code();
			code.setCodeText((String)resultSetItem);
			result.add(code);
	
		}

		return result;
	}
}
