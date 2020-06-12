package com.example.portfolio.controller.Group;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//메인이랑 소속 부분 관리 하는 컨트롤러

@Controller
@RequestMapping("/groupware")
public class GroupwareController {
	
	//메인 페이지
	@RequestMapping("/groupMain")
	public String viewGroupware(){
		
		return "/groupware/groupMain";
		
	}

	//관리자 페이지
	@RequestMapping("/groupAdmin")
	public String viewGroupAdmin(){
		
		return "/groupware/groupAdmin";
		
	}

	//부서 페이지
	@RequestMapping("/groupDepartment")
	public String viewGroupDepar(){
		
		return "/groupware/groupDepartment";
		
	}



}
