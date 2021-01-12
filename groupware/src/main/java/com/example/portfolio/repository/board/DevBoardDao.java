package com.example.portfolio.repository.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.portfolio.model.BoardVO;

@Repository
public class DevBoardDao{

	@Autowired SqlSession session;
	
	final static String NAMESPACE = "mappers.DevBoardMapper";
	
	public Map<String,Object> selectDevBoardDetail(int boardNo){
		return session.selectOne(NAMESPACE + ".selectDevBoardDetail", boardNo);
	}
	
	public List<Map<String,Object>> selectDevBoardUser(Map<String,Object> mvo){
		return session.selectList(NAMESPACE+".selectDevBoardUser", mvo);
	}
	
	public Map<String,Object> getDevBoardCount() {
		return session.selectOne(NAMESPACE + ".getDevBoardCount");
	}
	
	public List<Map<String,Object>> selectDevBoardList() {
		return session.selectList(NAMESPACE + ".selectDevBoardList");
	}
	
	public void setBoardContents(BoardVO bvo) {
		session.insert(NAMESPACE + ".setBoardContents", bvo);
		
	}

}
