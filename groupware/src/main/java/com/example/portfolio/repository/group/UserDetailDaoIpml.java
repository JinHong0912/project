package com.example.portfolio.repository.group;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.example.portfolio.model.UserDetailVO;

@Repository
public class UserDetailDaoIpml implements UserDetailDao{

	@Autowired	SqlSession sql; //디비 접속 객체 가져다 쓰기 (@Autowired)

	final static String namespace = "mappers.UserDetailMapper";
		
	@Override
	public int setUserNewInfo(UserDetailVO udvo) {
		
		return sql.insert(namespace + ".setUserNewInfo", udvo);
	}

	@Override
	public UserDetailVO getUserDetailInfo(int uid) {
		
		return sql.selectOne(namespace + ".getUserDetailInfo", uid);
	}

}
