package com.example.portfolio.repository.group;

import com.example.portfolio.model.UserDetailVO;
import com.example.portfolio.model.UserVO;

public interface UserDetailDao {
	
	//사원 상세 정보 등록
	public int setUserNewInfo(UserDetailVO udvo);
	
	//사원 상세 정보 등록 정보 보기
	public UserDetailVO getNewUserDetail(int uid);

	//사원 정보 수정 부분
	public int updateDetailView(UserDetailVO udvo);
}
