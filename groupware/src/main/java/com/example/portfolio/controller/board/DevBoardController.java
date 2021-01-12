package com.example.portfolio.controller.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.DevBoardVO;
import com.example.portfolio.service.board.DevBoardService;

@Controller
@RequestMapping("/devBoard")
public class DevBoardController {

	@Autowired
	DevBoardService devBoardService;
	
	@RequestMapping("/devBoard")
	public ModelAndView devBoard() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/devBoard/devBoardList");
		
		Map<String,Object> detail = new HashMap<>();
		int boardNo = 5;
		detail = devBoardService.selectDevBoardDetail(boardNo);
		// int count = devBoardService.getDevBoardCount();
		
		detail = devBoardService.getDevBoardCount();
		//cnt=asdfasdf
		// String to int , int to String, Object to int 
	
		List<Map<String,Object>> mapAll= new ArrayList<>();
		Map<String, Object> mvo = new HashMap<>();
		mvo.put("userid", "aaa");
		mvo.put("text","asd");
		// {userid=aaa}
		
		DevBoardVO vo = new DevBoardVO();
		//vo.setTitle("");
		//mapAll = devBoardService.selectDevBoardUser(vo);
		
				
		//obj -> int
		//mv.addObject("list",list);
		//mv.addObject("sum", sum);
		//mv.addObject("cnt", cnt);
		return mv;
	}
	
	
	

}
