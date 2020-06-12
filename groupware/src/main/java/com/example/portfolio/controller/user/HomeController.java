package com.example.portfolio.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class HomeController {
	
	//login
	@RequestMapping("/login")//localhost:8888/login
	public String getLogin() {
		return "/login/login";//views/login.jsp
		
	}
}
