package com.example.portfolio.repository.group;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.example.portfolio.model.UserDetailVO;

@Repository
public class UserDetailDaoIpml implements UserDetailDao{

	@Autowired	SqlSession sql; //디비 접속 객체 가져다 쓰기 (@Autowired)

	final static String namespace = "mappers.UserDetailMapper";
		
	@Override
	public int setUserDetail(UserDetailVO udvo) {
		
		return sql.insert(namespace + ".setUserDetail", udvo);
	}

}
