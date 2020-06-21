package com.example.portfolio.repository.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.portfolio.model.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired SqlSession session;
	
	final static String NAMESPACE = "mappers.BoardMapper";
	
	@Override
	public void setBoardContents(BoardVO bvo) {
		session.insert(NAMESPACE + ".setBoardContents", bvo);
		
	}

}
