package com.example.portfolio.repository.group;

import com.example.portfolio.model.UserDetailVO;

public interface UserDetailDao {
	
	//사원 상세 정보 등록
	public int setUserNewInfo(UserDetailVO udvo);
	
	//사원 상세 정보 등록 정보 보기
	public UserDetailVO getNewUserDetail(int uid);

//	사원 보이는 부분
//	public int
}
