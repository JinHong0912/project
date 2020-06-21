package com.example.portfolio.service.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.portfolio.model.BoardVO;
import com.example.portfolio.repository.board.BoardDao;

@Service
public class BoardServiceImpl implements BoardService{

	
	@Autowired BoardDao boardDao; 
	@Override
	public void setBoardContents(BoardVO bvo) {
		// TODO Auto-generated method stub
		boardDao.setBoardContents(bvo);
		
		
	}
	
	

	

}
