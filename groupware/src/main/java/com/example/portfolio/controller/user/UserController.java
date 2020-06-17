package com.example.portfolio.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.UserVO;
import com.example.portfolio.service.user.UserService;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired UserService userService;
	
	//	사원의 정보를 관리 하는 컨트롤러
	//href 형식으로 들어오면 GRT 방식으로
	@RequestMapping(value = "/groupRegister", method = RequestMethod.GET)
	public String getRegister() {
		return "/users/groupRegister";
	}
	
	//action 형식으로 들어오면 POST 방식으로
	//groupRegister.jsp에서 값을 가지고 오고 매핑 되어 있는 부분에 값이 들어 온다.
	@RequestMapping(value = "/groupRegister", method = RequestMethod.POST)
	@ResponseBody
	public String setRegister(@ModelAttribute UserVO uvo) {// Model 저장 View 화면 이동 //ModelAndView 저장도 하면서 보여 주는 것이다
		int result = userService.setUser(uvo);
		
		StringBuilder sb = new StringBuilder();
		String msg = "회원가입이 완료 되었습니다.";
		String error = "시스템 오류입니다. 관리자에게 문의하세요.";
		
		if( result > 0) {
			sb.append("<script>");
			sb.append("alert('"+msg+"');");
			sb.append("location.replace('/');");
			sb.append("</script>");
		}else {
			sb.append("<script>");
			sb.append("alert('"+error+"');");
			sb.append("location.replace('users/groupLogin');");
			sb.append("</script>");
			
		}
		return sb.toString();
	}

//	아이디 중복 체크
	@RequestMapping("/idCheck")
	@ResponseBody //javascript 사용시
	public String idCheck(@RequestParam String userid) {
		int result = userService.idCheck(userid);
		
		String str = null;
		if ( result > 0) {
			str = "ON";
			
		}else {
			str = "YES";
		}
		return str;
	}

//아이디 체크
	@RequestMapping("/loginCheck")
	@ResponseBody
	public String loginCheck(@ModelAttribute UserVO uvo, HttpSession session) {
		
		
		
		ModelAndView mav = new ModelAndView();
		UserVO userList = userService.loginCheck(uvo, session);
	
			StringBuilder sb = new StringBuilder();
			String msg = "로그인 되었습니다.";
			String error = "시스템 오류입니다. 관리자에게 문의하세요.";
		
		 if (userList == null ) {

				sb.append("<script>");
				sb.append("alert('"+error+"');");
				sb.append("location.replace('/login/groupLogin');");
				sb.append("</script>");
			
		 }else {
			 
				sb.append("<script>");
//				sb.append("alert('"+msg+"');");
				sb.append("location.replace('/groupware/groupAdmin');");
				sb.append("</script>");
														
			}
			return sb.toString();
					
	}










}
