package com.example.portfolio.service.group;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.portfolio.model.UserDetailVO;
import com.example.portfolio.model.UserVO;
import com.example.portfolio.repository.group.UserDetailDao;
import com.example.portfolio.repository.user.UserDao;

@Service
public class UserDetailServiceImpl implements UserDetailService {

	@Autowired UserDetailDao dao;//UserDetailDao에 있는것 가지고 온것
	
	@Override
	public int setUserDetail(UserDetailVO udvo) {
		
		return dao.setUserDetail(udvo);
	}
	
	
}
