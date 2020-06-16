package com.example.portfolio.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//login
	@RequestMapping("")//localhost:8888/login
	public String getLogin() {
		return "/login/groupLogin";//views/login.jsp
		
	}
}
