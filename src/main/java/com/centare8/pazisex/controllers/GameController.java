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
import com.centare8.pazisex.model.Code;
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
		else if(id==6)
		{
			return new ModelAndView("menWomen","game",game);
		}
		else if(id==108)
		{
			return new ModelAndView("ppiIntroduction","dummy", "");
		}
		else if(id==3)
		{
			
			return new ModelAndView("gameShoot","game", game);
		}
		else if(id==88)
		{
			
			return new ModelAndView("menWomenIntroduction");
		}
		else if(id==77)
		{
			
			return new ModelAndView("organsIntroduction");
		}
		else if(id==54)
		{
			return new ModelAndView("matchGameIntroduction");
		}
		else if(id==55)
		{
			return new ModelAndView("matchWords");
		}
		else if(id==56)
		{
			return new ModelAndView("matchGameExplanation");
		}
		else if(id==57)
		{
			return new ModelAndView("introductionMetode");
		}
		else if(id==8){
			
			return new ModelAndView("kontracepcija","game",game);
		}
		
		else if(id==99)
		{
			
			return new ModelAndView("lastPage","dummy", "");
		}
		
		
		else if(id==7)
		{
			return new ModelAndView("organs","game",game);
		}
		else
		{
			return new ModelAndView("gamePickRight","game",game);
		}
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("game") Game game) {
       
        List<UserResultEntity> resultsToSave=new ArrayList<UserResultEntity>();
        if(game.getGameID()==2 )
		{
			return new ModelAndView("codePage","game",game);
		}
        else if(game.getGameID()==6)
        {
        	return new ModelAndView("menWomenExplanation","dummy","");
        	
        }
        else if(game.getGameID()==7)
        {
        	return new ModelAndView("codePage","game",game);
        	
        }
        else if(game.getGameID()==8)
        {
        	return new ModelAndView("kontracepcijaExplanation","dummy","");
        	
        }
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
		userResultService.save(resultsToSave);
		return new ModelAndView("questionary","game",nextGame);
		
		}
		
		userResultService.save(resultsToSave);
         User user=new User();
        return new ModelAndView("user","user",user);
		
    }
	@RequestMapping(value = "/enterCode", method = RequestMethod.POST)
    public ModelAndView enterCode(@ModelAttribute("game") Game game) {
       
		List<Code> codes = gameService.getCodes();
     
     Code codeToCheck=new Code();
     codeToCheck.setCodeText(game.getGameName());
    
     for(int i=0; i<codes.size();i++)
     {
    	 Code code =codes.get(i);
    	 if(code.getCodeText().equals(game.getGameName()))
    	 {
    		 if(game.getGameID()==7){
    			 return new ModelAndView("introductionPPI","dummy","");
    		 }
    		 if(game.getGameID()==2){
    			 return new ModelAndView("organsIntroduction","dummy","");
    		 }
    		 if(game.getGameID()==6){
    			 return new ModelAndView("organsIntroduction","dummy","");
    		 }
    		 
    		  return new ModelAndView("redirect:" + "/game/getGame/3");
    		// Game nextGame = gameService.getGame(3);
 			//return new ModelAndView("gameShoot","game", nextGame);
    	 }
     }
		
			return new ModelAndView("codePage","game",game);
	
    }
	
	@RequestMapping(value = "/introduction", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView introduce() {
		
		return new ModelAndView("introduction","dummy","");
	}
}
