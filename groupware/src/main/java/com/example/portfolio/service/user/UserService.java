package com.example.portfolio.service.user;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.portfolio.model.UserVO;

public interface UserService {
	
	//아이디 중복체크
	public int idCheck(String userid);
	
	//간편 회원가입 입력
	public int setUser(UserVO uvo);
	
	//사원 검색
	public List<UserVO> getUsersList(int start, int end, String searchOpt, String  words);

	//사원 카운팅	
	public int getUsersCount(String searchOpt, String  words);

	//auth 사원 권한 부여(일반 , 중간관리자 , 관리자)
	public int authUpdate(Map<String, Object> map); 
//
//	public int setUsersDeleteAll(int uid);
//
//	public int setUsersDelete(int uid);
//
	public UserVO loginCheck(UserVO uvo, HttpSession session);
//
	public void logout(HttpSession session);
//
//	public UserVO getUsersView(int uid);
//	
//	public int userUpdate(UserVO uvo);
}
