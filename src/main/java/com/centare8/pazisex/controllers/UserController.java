package com.centare8.pazisex.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.centare8.pazisex.entities.UserEntity;
import com.centare8.pazisex.model.User;
import com.centare8.pazisex.repositories.UserRepository;

@Controller
@RequestMapping("/user/")
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView getUser() {
	
        User user=new User();
       return new ModelAndView("user","user",user);
	}
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("user") User user) {
	
		 UserEntity userToSave=new UserEntity();
		 userToSave.setName(user.getName());
		 userToSave.setLastName(user.getLastName());
		 userToSave.setDateOfBirth(user.getDateOfBirth());
		 userToSave.setEmail(user.geteMail());
		 userToSave.setFacebook(user.getFacebook());
		 userToSave.setTwitter(user.getTwitterName());
		 userToSave.setInstagram(user.getInstagramName());
		 userToSave.setCity(user.getCity());
		 
		userRepository.save(userToSave);
		return  new ModelAndView("likePage","message","");
	}
}
