package com.centare8.pazisex.controllers;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.centare8.pazisex.model.Result;

import com.centare8.pazisex.services.UserResultService;





@Controller
@RequestMapping("/")
public class DefaultController {

	@Autowired
	UserResultService userResultService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView  status() {
		
		ModelAndView model = new ModelAndView("mainPage");
			
		return model;
	}

	@RequestMapping(value = "/Results", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView getResults() {
		
		List<Result> results=userResultService.getAllResults();
		ModelAndView model = new ModelAndView("results","results",results);
		return model;
	}
	@RequestMapping(value = "/", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> setStatus(@RequestBody String status) {

		return new ResponseEntity<String>("set", HttpStatus.OK);
	}

}
