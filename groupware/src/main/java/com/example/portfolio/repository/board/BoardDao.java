package com.example.portfolio.repository.board;

import org.apache.ibatis.annotations.Mapper;

import com.example.portfolio.model.BoardVO;


public interface BoardDao {

	
//	public 출력 setBoardContents(BoardVO bvo);
	public void setBoardContents(BoardVO bvo);
}
