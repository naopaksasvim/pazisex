package com.centare8.pazisex.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.centare8.pazisex.entities.GameEntity;

public interface GameRepository extends JpaRepository<GameEntity, Integer>{

	@Query(value = "SELECT Game.gameID, Game.gameName, Game.durationMinutes FROM Game", nativeQuery = true)
    List<Object[]> getAllGames();
    
    @Query(value = "SELECT Game.gameID, Game.gameName, Game.durationMinutes FROM Game where Game.gameID= :gameID ", nativeQuery = true)
    List<Object[]>  getGame(@Param("gameID") int gameID);
	
   @Query(value="Select Question.questionID, Question.questionText From Question Inner Join question2Game On Question.questionID = question2Game.questionID Where question2Game.gameID = :gameID",nativeQuery=true)
   List<Object[]> getQuestionsForGame(@Param("gameID") int gameID);
   
   @Query(value="Select Answer.answerID,  Answer.questionID,  Answer.answerText,Answer.isCorrect From  Answer Where Answer.questionID = :questionID",nativeQuery=true)
   List<Object[]> getAnswersForQuestion(@Param("questionID") int questionID);
}
