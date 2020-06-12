package com.example.portfolio.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class UserController {
//	사원의 정보를 관리 하는 컨트롤러
	@RequestMapping("/groupRegister")
	public String getRegister() {
		return "/users/groupRegister";
	}
}
