package com.centare8.pazisex.repositories;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.centare8.pazisex.entities.UserResultEntity;



	public interface UserResultRepository extends JpaRepository<UserResultEntity, Integer>{
	
		@Query(value = "Select Question.questionID,Game.gameName,  Question.questionText,  Answer.answerText,  (Select    Count(*)  From    userResult  Where    userResult.answerID = Answer.answerID and  Date(userResult.creationDate) = Date(Now())) as numberOfAnswers From      Answer Inner Join  Question On Answer.questionID = Question.questionID Inner Join   question2Game On Question.questionID = question2Game.questionID Inner Join  Game On question2Game.gameID = Game.gameID Where   (Game.gameID = 4) Or   (Game.gameID = 5) ", nativeQuery = true)
	    List<Object[]> getAllResults();
		
}
