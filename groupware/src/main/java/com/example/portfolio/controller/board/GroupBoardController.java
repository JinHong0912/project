package com.example.portfolio.controller.board;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.portfolio.model.BoardVO;
import com.example.portfolio.model.UserVO;
import com.example.portfolio.service.board.BoardService;
import com.example.portfolio.service.user.UserService;

@Controller
@RequestMapping("/board")
public class GroupBoardController {
	
	@Autowired UserService userService;
	
	@Autowired BoardService boardService;
	
	// 게시판 등록하기 
	@RequestMapping("/getBoardList")
	public ModelAndView viewGroupgetBoardList() {

		ModelAndView mav = new ModelAndView();

		mav.addObject("template", "groupBoard");
		mav.addObject("mypage", "getBoardList");

		mav.setViewName("/groupware/groupMain");

		return mav;

	}
	
	// 게시판 등록하기 
		@RequestMapping(value = "/setBoardContents", method = RequestMethod.GET)
		public ModelAndView getArticle(@ModelAttribute UserVO uvo) {
		int uservo = userService.setUser(uvo);
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("template", uvo);
		mav.addObject("mypage", "getBoardList");
		mav.setViewName("/groupware/groupMain");

		return mav;

	}
		@RequestMapping( value = "/setBoardContents" , method = RequestMethod.POST)
		@ResponseBody
		public String viewGroupsetBoardContents(@ModelAttribute BoardVO bvo, @RequestPart MultipartFile files) throws IllegalStateException, IOException {

			if( files.isEmpty() ) {
				boardService.setBoardContents(bvo);//저장
			}else {
				//첨부파일 저장 되는 위치
				//Spring 보안 상 : 외부파일을 접근해서 저장
				//논리적 경로 : /../ 물리적 :c , d
				String grpboard_fileUrl= "/Users/jinhong/git/project/groupware/src/main/resources/static/allimg//";
				
				//파일 이름 변경
				String grpboard_fileName = files.getOriginalFilename();
				String grpboard_fileNameExtension = FilenameUtils.getExtension(grpboard_fileName).toLowerCase();
				
				File destinationFile = null;
				String destinationFileName;
				
				do{
					destinationFileName = RandomStringUtils.randomAlphanumeric(32)+ "."+ grpboard_fileNameExtension;
					destinationFile = new File(grpboard_fileUrl + destinationFileName);
				
				
				}while(destinationFile.exists());
					
				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
				
				bvo.setGrpboard_fileName(destinationFileName);
				bvo.setGrpboard_fileOriName(grpboard_fileName);
				bvo.setGrpboard_fileUrl(grpboard_fileUrl);
					
					
					
				boardService.setBoardContents(bvo);	
			}
			
			StringBuilder sb = new StringBuilder();
			String msg = "입력하신 게시물이 저장되었습니다.";

			sb.append("<script>");// <script>
			sb.append("alert('" + msg + "tst : " + bvo.getGrpboard_ref() + "');");// alert('');
			sb.append("location.replace('/board/getBoardList" + bvo.getBid() + "')");
			sb.append("</script>");// </script>

			return sb.toString();
		}
}