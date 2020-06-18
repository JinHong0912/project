package com.example.portfolio.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.portfolio.service.user.UserService;

@Controller
public class HomeController {
	
	@Autowired UserService usersService; 
	
	//login
	@RequestMapping("")//localhost:8888/login
	public String getLogin() {
		return "/login/groupLogin";//views/login.jsp
		
	}

	//logout
	@RequestMapping("/logout")
	public String setLogout(HttpSession session) {
		usersService.logout(session);
		return "/login/groupLogin";
		
	}


}
