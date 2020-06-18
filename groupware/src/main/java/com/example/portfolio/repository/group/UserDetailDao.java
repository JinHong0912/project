package com.example.portfolio.repository.group;

import com.example.portfolio.model.UserDetailVO;

public interface UserDetailDao {
	
	//사원 상세 정보 등록
	public int setUserDetail(UserDetailVO udvo);
	
	//사원 상세 정보 등록 정보 보기
	public int getUserDetailInfo(UserDetailVO udvo);

}
