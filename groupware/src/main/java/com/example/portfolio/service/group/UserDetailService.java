package com.example.portfolio.service.group;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.example.portfolio.model.UserDetailVO;
import com.example.portfolio.model.UserVO;
import com.example.portfolio.repository.group.UserDetailDao;
import com.example.portfolio.repository.user.UserDao;


public interface UserDetailService {

	public int setUserNewInfo(UserDetailVO udvo);
	
	//사원 상세 정보 등록 정보 보기
	public UserDetailVO getNewUserDetail(int uid);
	
	//사원 정보 수정 부분
	public int updateDetailView(UserDetailVO udvo);

	//사원 정보 수정 부분
//		public List<UserDetailVO> userDetailList();
}
