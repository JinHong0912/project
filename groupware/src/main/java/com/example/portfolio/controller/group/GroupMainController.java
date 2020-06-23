package com.example.portfolio.controller.group;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.UserDetailVO;
import com.example.portfolio.model.UserVO;
import com.example.portfolio.service.group.UserDetailService;
import com.example.portfolio.service.user.UserService;

@Controller
@RequestMapping("/groupware")
public class GroupMainController {

	@Autowired
	UserService UserService;

	@Autowired
	UserDetailService userDetailService;

	// 관리자 간편 사원현황 페이지
	@RequestMapping("/groupAdmin")
	public ModelAndView viewGroupware(@RequestParam(defaultValue = "1") int num,
			@RequestParam(defaultValue = "all") String searchOpt, @RequestParam(defaultValue = "") String words) {

		int userCount = UserService.getUsersCount(searchOpt, words);

		int end = 6;
		int start = (num - 1) * end;
		int pageNum = (int) Math.ceil((double) userCount / end);

		List<UserVO> uvo = UserService.getUsersList(start, end, searchOpt, words);
		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "admin");
		mav.addObject("usersList", uvo);
		mav.addObject("userCount", userCount);

		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);

		mav.addObject("pageNum", pageNum);

		mav.setViewName("/groupware/groupMain");

		return mav;

	}

	// 사원 정보 리스트 페이지
	@RequestMapping("/groupwareUserList")
	public ModelAndView viewGroupwareUserList(@RequestParam(defaultValue = "1") int num,
			@RequestParam(defaultValue = "all") String searchOpt, @RequestParam(defaultValue = "") String words) {

		int usersCount = UserService.getUsersCount(searchOpt, words);

		int end = 10;
		int start = (num - 1) * end;
		int pageNum = (int) Math.ceil((double) usersCount / end);

		List<UserVO> uvo = UserService.getUsersList(start, end, searchOpt, words);
//		List<UserDetailVO> udvo = userDetailService.getUserDetailInfo(start, end, searchOpt, words);
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "userList");
		mav.addObject("usersList", uvo);
		mav.addObject("usersCount", usersCount);

		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);

		mav.addObject("pageNum", pageNum);

		mav.setViewName("/groupware/groupMain");

		return mav;

	}

	// 새로운 사원 관리자 등록
	@RequestMapping("/userNewAdmin")
	public ModelAndView viewGroupwareUserNewAdmin() {

		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "userNewAdmin");

		mav.setViewName("/groupware/groupMain");

		return mav;

	}
	
	
	

	// 사원 상세 들어가는 페이지
	@RequestMapping("/setUserNewInfo")
	@ResponseBody
	public String viewgroupUserNewInfo(@ModelAttribute UserDetailVO udvo ,@ModelAttribute UserVO uvo) {
		
		int uservo = UserService.setUser(uvo); 
		udvo.setUdid(uservo);
		int result = userDetailService.setUserNewInfo(udvo);

		StringBuilder sb = new StringBuilder();

		if (result > 0) {
			sb.append("<script>");
			sb.append("alert('상세 등록 완료 하였습니다.감사합니다.');");
			sb.append("location.replace('/groupware/getUsersView?uid="+uvo.getUid()+"');");
//			sb.append("location.replace('/groupware/groupUserView');");
			sb.append("</script>");

		} else {
			sb.append("<script>");
			sb.append("alert('상세등록이 오류 입니다. 관리자 게시판에 문의 하세요.');");
			sb.append("location.replace('/groupware/getUsersView');");
			sb.append("</script>");
		}

		return sb.toString();

	}

	// 사원 등록 후 상세 정보 페이지
	@RequestMapping("/getUsersView")
	public ModelAndView getUsersView(@RequestParam int uid) {
		UserDetailVO udtvo = userDetailService.getNewUserDetail(uid);
		UserVO uvo = UserService.getUsersView(uid);
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("template","groupware");
		mav.addObject("mypage","userView");
		mav.addObject("usersInfo",udtvo);
		mav.addObject("usersView",uvo);
		mav.setViewName("/groupware/groupMain");
		return mav;

	}
	

	// 사원 메인 페이지
	@RequestMapping("/groupUsers")
	public ModelAndView viewGroupwareUser() {

		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "user");

		mav.setViewName("/groupware/groupMain");

		return mav;

	}

	// 사원 상세 수정 페이지
	@RequestMapping("/groupwareUserDetail")
	public ModelAndView viewUserDetail(@RequestParam int uid) {
		UserDetailVO udtvo = userDetailService.getNewUserDetail(uid);
		UserVO uvo = UserService.getUsersView(uid);
		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "userDetail");
		mav.addObject("usersInfo",udtvo);
		mav.addObject("usersView",uvo);
		mav.setViewName("/groupware/groupMain");

		return mav;

	}
	
	@RequestMapping("/userUpdateView")
	@ResponseBody
	public String userUpdateView(@ModelAttribute UserVO uvo,@ModelAttribute UserDetailVO udvo) {
		UserService.userUpdateView(uvo);
		userDetailService.updateDetailView(udvo);
		StringBuilder sb = null;

				sb = new StringBuilder();
				sb.append("<script>");
				sb.append("alert('사원정보가 정상적으로 수정 되었습니다.');");
				sb.append("window.location.replace('/groupware/getUsersView?uid="+udvo.getUdid()+"');");
				sb.append("</script>");
		
//			sb = new StringBuilder();
//			sb.append("<script>");
//			sb.append("alert('사원 정보가 수정 되지 않았습니다. 관리자에게 문의 하세요')");
//			sb.append("window.location.replace('/groupware/groupwareUserList')");
//			sb.append("</script>");
//			
			
		
		return sb.toString();

	}
	
	
	
}
