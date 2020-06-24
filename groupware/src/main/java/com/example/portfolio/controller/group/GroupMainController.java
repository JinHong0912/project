package com.example.portfolio.controller.group;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.UserDetailVO;
import com.example.portfolio.model.UserVO;
import com.example.portfolio.service.group.UserDetailService;
import com.example.portfolio.service.user.UserService;
import com.mysql.cj.util.DnsSrv.SrvRecord;

@Controller
@RequestMapping("/groupware")
public class GroupMainController {

	@Autowired
	UserService UserService;

	@Autowired
	UserDetailService userDetailService;

	// 사원 메인 페이지
	@RequestMapping("/groupUsers")
	public ModelAndView viewGroupwareUser() {

		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "user");

		mav.setViewName("/groupware/groupMain");

		return mav;

	}
	
	
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
	public ModelAndView viewGroupwareUserList(
			@RequestParam(defaultValue = "1") int num,
			@RequestParam(defaultValue = "all") String searchOpt,
			@RequestParam(defaultValue = "") String words) {

		int usersCount = UserService.getUsersCount(searchOpt, words);
//		List<UserDetailVO> udvo = userDetailService.userDetailList();
		
		int end = 10;
		int start = (num - 1) * end;
		int pageNum = (int) Math.ceil((double) usersCount / end);

		List<UserVO> uvo = UserService.getUsersList(start, end, searchOpt, words);
//		List<UserDetailVO> udvo = userDetailService.getUserDetailInfo(start, end, searchOpt, words);
		
		ModelAndView mav = new ModelAndView();
		

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "userList");
		mav.addObject("usersList", uvo);
//		mav.addObject("usersDetailList", udvo);
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
		//사원 번호 만드는 부분
		int company_NumberYear = Calendar.getInstance().get(Calendar.YEAR);
		
		UserVO selectUvo = new UserVO();
		selectUvo.setDepartment(uvo.getDepartment());
		selectUvo.setUserRegdate(company_NumberYear+"-01-01 00:00:00");
		int oidcompany = UserService.getCompanynumber(selectUvo);

		//사내번호 만들기 (companyNumber)
		String department_Numder = "";
		String userRank_Number = "";
		String company_Number = "";
		
		if( oidcompany == 0) {
			company_NumberYear -=2000;
			company_Number = ""+company_NumberYear;
			if( uvo.getDepartment().equals("인사팀")) {
				department_Numder ="10";
			}else if(uvo.getDepartment().equals("기획팀")){
				
				department_Numder = "20";
			}
		}else {//2020년도 -01-01 00:00:00; 시에 가입 한 사람들에서 사내 번호 만들기 처음애 값이 있으면 안들어 가고 없으면 들어 간다 =.
			oidcompany++;
			company_Number=""+oidcompany;
		}
		uvo.setCompanyNumber(company_Number);
		
		
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
	

	// 사원 상세가 없으면 등록 하는 페이지
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
	
	@RequestMapping("/setDetailUpdate")
	@ResponseBody
	public String setDetailUpdate(@ModelAttribute UserVO uvo, @ModelAttribute UserDetailVO udvo,@RequestParam int uid, @RequestParam int udid) {
			UserService.userUpdateView(uvo);
			userDetailService.setUserNewInfo(udvo);
			UserService.divUpdate(uvo);
		
		
		StringBuilder sb = new StringBuilder();
		
		
			
				
				sb.append("<script>");
				sb.append("alert('사원 상세 정보가  등록 되었습니다.');");
				sb.append("location.replace('/groupware/getUsersView?uid="+uvo.getUid()+"');");
			sb.append("</script>");
	
				
		
//		} else {
//			sb.append("<script>");
//			sb.append("alert('상세 수정이 오류 입니다. 관리자 게시판에 문의 하세요.');");
//			sb.append("location.replace('/groupware/getUsersView');");
//			sb.append("</script>");
//		}

		return sb.toString();

	}
	
	
	
	// 사원 상세가 있으면 수정 되는  페이지
	@RequestMapping("/getDetailUpdate")
	public ModelAndView getDetailUpdate(@RequestParam int uid) {
		UserDetailVO udtvo = userDetailService.getNewUserDetail(uid);
		UserVO uvo = UserService.getUsersView(uid);
		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupware");
		mav.addObject("mypage", "userDetailUpdate");
		mav.addObject("usersInfo",udtvo);
		mav.addObject("usersView",uvo);
		mav.setViewName("/groupware/groupMain");

		return mav;

	}
	
	// 사원 상세가 있으면 수정 되는  페이지
	@RequestMapping("/groupDetailUpdate")
	@ResponseBody
	public String groupDetailUpdate(@ModelAttribute UserVO uvo, @ModelAttribute UserDetailVO udvo,@RequestParam int uid,@RequestParam int udid) {
		int result = UserService.userUpdateView(uvo);
		int udtvo = userDetailService.updateDetailView(udvo);
		
		
		UserDetailVO udIfovo = userDetailService.getNewUserDetail(uid);
		UserVO uInfovo = UserService.getUsersView(uid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("usersInfo",udIfovo);
		mav.addObject("usersView",uInfovo);
		StringBuilder sb = new StringBuilder();

		
		
		if (result > 0) {
			if( udtvo >0 ) {
				sb.append("<script>");
				sb.append("alert('사원 상세 정보가  수정 되었습니다.');");
				sb.append("location.replace('/groupware/getUsersView?uid="+uvo.getUid()+"');");
//				sb.append("location.replace('/groupware/groupUserView');");
				sb.append("</script>");
			}
		
		} else {
			sb.append("<script>");
			sb.append("alert('상세 수정이 오류 입니다. 관리자 게시판에 문의 하세요.');");
			sb.append("location.replace('/groupware/getUsersView');");
			sb.append("</script>");
		}

		return sb.toString();

	}
	
	
	
	@RequestMapping("/userUpdateView")
	@ResponseBody
	public String userUpdateView(@ModelAttribute UserVO uvo,@ModelAttribute UserDetailVO udvo,@RequestParam int uid,@RequestParam int udid) {
		
		
		UserService.userUpdateView(uvo);
		userDetailService.updateDetailView(udvo);
		StringBuilder sb = null;
		
				sb = new StringBuilder();
				sb.append("<script>");
				sb.append("alert('사원정보가 정상적으로 수정 되었습니다.');");
				sb.append("window.location.replace('/groupware/getUsersView?uid="+uvo.getUid()+"');");
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
