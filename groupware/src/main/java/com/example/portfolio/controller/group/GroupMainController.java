package com.example.portfolio.controller.group;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.UserVO;
import com.example.portfolio.service.user.UserService;

@Controller
@RequestMapping("/groupware")
public class GroupMainController {

		@Autowired UserService UserService;
		
		
	//관리자 간편 사원현황 페이지
		@RequestMapping("/groupAdmin")
		public ModelAndView viewGroupware(@RequestParam(defaultValue = "1") int num){
			
			int end = 10;
			int start = (num - 1 ) * end;
			List<UserVO> uvo = UserService.getUsersList(0, 10);
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "admin");
			mav.addObject("usersList", uvo);

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}
	
		
		
	//사원 정보  리스트 페이지
		@RequestMapping("/groupwareUserList")
		public ModelAndView viewGroupwareUserList(@RequestParam(defaultValue = "1") int num){
			
			
			int end = 10;
			int start = (num - 1 ) * end;
			List<UserVO> uvo = UserService.getUsersList(0, 10);
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "userList");
			mav.addObject("usersList", uvo);

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}
		
		//사원 상세등록 페이지
		@RequestMapping("/groupwareUserDetail")
		public ModelAndView viewUserDetail(){
			
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "userDetail");
			

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}	
	
		//사원 메인 페이지
				@RequestMapping("/groupUsers")
				public ModelAndView viewGroupwareUser(){
					
					ModelAndView mav = new ModelAndView();
								
					mav.addObject("template", "groupware");
					mav.addObject("mypage", "user");
					

					mav.setViewName("/groupware/groupMain");
					
					return mav;
					
					
				}	
		//사원 등록 후 상세 정보 페이지
		@RequestMapping("/groupUserView")
		public ModelAndView viewGroupwareUserView(){
			
			ModelAndView mav = new ModelAndView();
						
			mav.addObject("template", "groupware");
			mav.addObject("mypage", "userView");
			

			mav.setViewName("/groupware/groupMain");
			
			return mav;
			
			
		}
	
	
	
	
	
	
	
}
