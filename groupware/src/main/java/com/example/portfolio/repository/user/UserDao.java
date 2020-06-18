package com.example.portfolio.repository.user;

import java.util.List;
import java.util.Map;

import com.example.portfolio.model.UserVO;

public interface UserDao {

	public int idCheck(String userid);
	
	public int setUser(UserVO uvo);

	//접근제한자 List<UserVO>출력 메소드명 입력
	//리스트 검색 부분 : String searchOpt, String  words
	public List<UserVO> getUsersList(int start,int end,String searchOpt, String  words);

	//접근제한자(public) 화면출력(int) 메소드이름(getUsersCount) (입력)
	//검색하는 부분
	public int getUsersCount(String searchOpt, String  words);
	
	//auth 사원 권한 부여(일반 , 중간관리자 , 관리자)
	public int authUpdate(Map<String, Object> map); 
	
//	public int setUsersDeleteAll(int uid);
//
//	public int setUsersDelete(int uid);
//
//	//public 출력 loginCheck(입력) 한개가 아닐때 배열을 사용!!
	public UserVO loginCheck(UserVO uvo);
//	
//	public UserVO getUsersView(int uid);
//	
//	// 회원 수정 부분
//	public int userUpdate(UserVO uvo);
	

}
