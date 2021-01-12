package com.example.portfolio.service.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.portfolio.repository.board.DevBoardDao;

@Service
public class DevBoardService{

	@Autowired
	DevBoardDao devBoardDao;
	
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
	
	public List<Map<String,Object>> selectDevBoardList() {
		List<Map<String,Object>> resultList = new ArrayList<>();
		
		resultList = devBoardDao.selectDevBoardList();
		return resultList;
	}
	
}
