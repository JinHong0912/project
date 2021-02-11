package com.example.portfolio.repository.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.portfolio.model.BoardVO;
import com.example.portfolio.model.DevBoardVO;

@Repository
public class DevBoardDao{

	@Autowired SqlSession session;
	
	final static String NAMESPACE = "mappers.DevBoardMapper";

	/* 게시글 리스트 조회 */
	public List<Map<String,Object>> selectDevBoardList(Map<String,Object> param) {
		return session.selectList(NAMESPACE + ".selectDevBoardList", param);
	}
	
	
	/* 게시글 상세 조회 */
	public DevBoardVO getBoardDetail(DevBoardVO dvo){
		return session.selectOne(NAMESPACE + ".getBoardDetail", dvo);
	}

	/* 조회수 업데이트 */
	public void updateBoardViewCnt(int boardNo) {
		session.update(NAMESPACE + ".updateBoardViewCnt", boardNo);
	}
	
	public Map<String,Object> selectDevBoardDetail(int boardNo){
		return session.selectOne(NAMESPACE + ".selectDevBoardDetail", boardNo);
	}
	
	public List<Map<String,Object>> selectDevBoardUser(Map<String,Object> mvo){
		return session.selectList(NAMESPACE+".selectDevBoardUser", mvo);
	}
	
	public Map<String,Object> getDevBoardCount() {
		return session.selectOne(NAMESPACE + ".getDevBoardCount");
	}
	
	
	
	public void setBoardContents(BoardVO bvo) {
		session.insert(NAMESPACE + ".setBoardContents", bvo);
		
	}
	
	/* 게시글 수정 */
	public void updateBoardDetail(DevBoardVO devBoardVo) {
		session.update(NAMESPACE + ".updateBoardDetail", devBoardVo);
	}

	public void insertBoardDetail(DevBoardVO devboardVo) throws Exception {
		session.insert(NAMESPACE+".insertBoardDetail",devboardVo);
	}
	
	public void deleteBoardDetail(DevBoardVO devboardVo) throws Exception {
		session.delete(NAMESPACE+".deleteBoardDetail",devboardVo);
	}
 
}
