package com.example.portfolio.controller.board;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.DevBoardVO;
import com.example.portfolio.service.board.DevBoardService;


@Controller
@RequestMapping("/devBoard")
public class DevBoardController {

	@Autowired
	DevBoardService devBoardService;
	
	
	/**
	 * 게시판 리스트 페이지
	 * @return
	 */
	@RequestMapping("/devBoardList")
	public ModelAndView devBoardList() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("/devBoard/devBoardList");
		return mv;
	}
	
	
	/**
	 * 게시글 리스트 조회
	 * @param param
	 * @return
	 */
	@RequestMapping("/getBoardList")
	@ResponseBody
	public List<Map<String,Object>> getBoardList(@RequestParam Map<String, Object> param) {
		
		List<Map<String,Object>> boardList = new ArrayList<>();
		boardList = devBoardService.selectDevBoardList(param);

		return boardList;
	}
	
	
	/**
	 * 게시글 상세페이지 
	 * @param devBoardVo
	 * @return
	 */
	@RequestMapping("/getBoardDetail")
	public ModelAndView devBoardDetail(@ModelAttribute DevBoardVO devBoardVo) {
		ModelAndView mv = new ModelAndView();

		devBoardVo = devBoardService.getBoardDetail(devBoardVo);
		
		mv.addObject("devBoardVo", devBoardVo);
		mv.setViewName("/devBoard/devBoardDetail");
		return mv;
	}
	

	/**
	 * 게시글 수정 페이지 이동
	 * @param devBoardVo
	 * @return
	 */
	@RequestMapping("/getBoardUpdate")
	public ModelAndView devBoardUpdate(@ModelAttribute DevBoardVO devBoardVo) {
		ModelAndView mv = new ModelAndView();
		
		devBoardVo = devBoardService.getBoardDetail(devBoardVo);
		mv.addObject("devBoardVo", devBoardVo);
		
		mv.setViewName("/devBoard/devBoardUpdate");
		return mv;
	}
	
	/**
	 * 게시글 수정
	 * @param devBoardVo
	 * @return
	 */
	@RequestMapping(value="/saveBoardDetail", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> savaBoardDetail(@ModelAttribute DevBoardVO devBoardVo) {
		
		devBoardService.saveBoardDetail(devBoardVo);
		
		Map<String,Object> map = new HashMap<>();
		
		return map;
	}
	
	
	/**
	 * 게시글 작성페이지
	 * @return
	 */
	@RequestMapping("/devBoardInsert")
	public ModelAndView devBoardInsert() {
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("/devBoard/devBoardInsert");
		return mv;
	}
	
	/**
	 * 게시글 작성
	 * @param devBoardVo
	 * @return
	 */
	@RequestMapping(value="/insertBoardDetail", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertBoardDetail(@ModelAttribute DevBoardVO devBoardVo) {//devBoardVo는 주소를 가르친다
		
		Map<String,Object> map = new HashMap<>();
		map = devBoardService.insertBoardDetail(devBoardVo);
	
		return map;
	}
	
	
	
	@RequestMapping(value="/deleteBoardDetail", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteBoardDetail(@ModelAttribute DevBoardVO devBoardVo) {
		
		Map<String,Object> map = new HashMap<>();
		
		try {
			devBoardService.deleteBoardDetail(devBoardVo);
			
			map.put("msg", "SECCESS");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("msg", "Fail");
		}
		
		return map;
	}
}
