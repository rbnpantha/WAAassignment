package com.rbn.LoginApplication2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbn.LoginApplication2.model.User;
import com.rbn.LoginApplication2.service.AuthenticateUserService;

@Controller
public class LoginController {

	@Autowired
	AuthenticateUserService authenticateUserService;
	
	User user;

	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String checkValidity(@RequestParam("username") String userName, @RequestParam("pass") String pass,
			Model model) {
		user = new User(userName, pass);
		if (authenticateUserService.authenticateUser(userName, pass)) {
			return "redirect:/welcome";
		} else {
			model.addAttribute("msg", " Invalid username or password!!");
			return "login";
		}
	}

	@RequestMapping(value= "/welcome" , method = RequestMethod.GET)
		public String welcomeUser(Model model) {
		model.addAttribute("msg", user.getName() + " Welcome to WAA");
			return "welcome";
		}

}
