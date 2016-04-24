package com.centare8.pazisex.controllers;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.centare8.pazisex.entities.UserResultEntity;
import com.centare8.pazisex.model.Game;
import com.centare8.pazisex.model.Question;
import com.centare8.pazisex.model.User;
import com.centare8.pazisex.repositories.UserResultRepository;
import com.centare8.pazisex.services.GameService;


@Controller
@RequestMapping("/game/")
public class GameController {

	@Autowired
	GameService gameService;
	@Autowired
	UserResultRepository userResultService;
	
	@RequestMapping(value = "/questionaryAbout", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView questionaryIntroduce() {
		
		return new ModelAndView("questionaryIntroduction","dummy","");
	}
	
	
	@RequestMapping(value = "/getGame/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView getGame(@PathVariable("id") int id) {
		
		System.out.println("");
		int gameid=id;
		Game game = gameService.getGame(gameid);
		
		
		if(id==4)
		{
			return new ModelAndView("questionary","game",game);
		}
		if(id==3)
		{
			
			return new ModelAndView("gameShoot","game", game);
		}
		else
		{
			return new ModelAndView("gamePickRight","game",game);
		}
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("game") Game game) {
       
        List<UserResultEntity> resultsToSave=new ArrayList<UserResultEntity>();
     
		for (Question question : game.getQuestions()) {
		    UserResultEntity userResult=new UserResultEntity();
		    userResult.setAnswerID(question.getUsersAnswer());
		    userResult.setCreationDate(new Date());
			userResult.setQuestionID(question.getQuestionID());
			userResult.setUserResultID(1);
		       
			resultsToSave.add(userResult);
		}
		if(game.getGameID()==4)
		{Game nextGame = gameService.getGame(5);
		return new ModelAndView("questionary","game",nextGame);
		}
		userResultService.save(resultsToSave);
         User user=new User();
        return new ModelAndView("user","user",user);
    }
	
	@RequestMapping(value = "/introduction", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView introduce() {
		
		return new ModelAndView("introduction","dummy","");
	}
}
