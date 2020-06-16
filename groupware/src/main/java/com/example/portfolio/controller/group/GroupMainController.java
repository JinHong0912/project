package com.example.portfolio.controller.group;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.service.user.UserService;

@Controller
@RequestMapping("/groupware")
public class GroupMainController {

		@Autowired UserService UserService;
		
	//메인 페이지
		@RequestMapping("/groupMain")
		public ModelAndView viewGroupware(){
			
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "admin");
			

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}
		
	//회원 상세 정보 페이지
		@RequestMapping("/groupwareMemberInsert")
		public ModelAndView viewGroupwareUserManagement(){
			
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "memberInfo");
			

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}
		
		//회원 관리 페이지
		@RequestMapping("/groupUsers")
		public ModelAndView viewGroupwareUser(){
			
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "user");
			

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}	
	
		//회원 등록 페이지
		@RequestMapping("/groupwareMember")
		public ModelAndView viewGroupwareManagement(){
			
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "insetInfo");
			

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}
	
	
	
	
	
	
	
}