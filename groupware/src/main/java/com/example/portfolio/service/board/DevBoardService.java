package com.example.portfolio.service.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.portfolio.model.DevBoardVO;
import com.example.portfolio.repository.board.DevBoardDao;

@Service
public class DevBoardService{

	@Autowired
	DevBoardDao devBoardDao;
	
	/**
	 * 게시글 리스트 조회
	 * @param param
	 * @return
	 */
	public List<Map<String,Object>> selectDevBoardList(Map<String, Object> param) {
		List<Map<String,Object>> resultList = devBoardDao.selectDevBoardList(param);	
		return resultList;
	}
	
	/**
	 * 게시글 상세 조회 
	 * @param dvo
	 * @return
	 */
	public DevBoardVO getBoardDetail(DevBoardVO dvo){
		devBoardDao.updateBoardViewCnt(dvo.getBoardNo());
		return devBoardDao.getBoardDetail(dvo);
	}
	
	public int test(int x, int y) {
		return x+y;
	}

	public Map<String,Object> selectDevBoardDetail(int boardNo){
		return devBoardDao.selectDevBoardDetail(boardNo);
	}
	
	public List<Map<String,Object>> selectDevBoardUser(Map<String,Object> mvo){
		return devBoardDao.selectDevBoardUser(mvo);
		
	}
	
	public Map<String,Object> getDevBoardCount() {
		//int count = devBoardDao.getDevBoardCount();
		return devBoardDao.getDevBoardCount();
	}
	
	
	/**
	 * 게시글 수정
	 * @param devBoardVo
	 */
	public void saveBoardDetail(DevBoardVO devBoardVo) {
		
		devBoardDao.updateBoardDetail(devBoardVo);
	}
	
	/**
	 * 게시글 작성
	 * @param devBoardVo
	 * @throws Exception
	 */
    public Map<String, Object> insertBoardDetail(DevBoardVO devBoardVo) {

    	Map<String, Object> map = new HashMap<>();
    	try {
			devBoardDao.insertBoardDetail(devBoardVo);
			map.put("code", 200);
			map.put("msg", "SECCESS");
			
		} catch (Exception e) {
			e.printStackTrace();
			map.put("code", 999);
			map.put("msg", "Fail");
		}
    	return map;
	}
    
    public void deleteBoardDetail(DevBoardVO devBoardVo) throws Exception {
		
		devBoardDao.deleteBoardDetail(devBoardVo);
	}
}
