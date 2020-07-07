package com.it.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.it.model.notice.BoardService;
import com.it.model.notice.Notice;

//아래의 어노테이션이 없으면, 자동 검색 대상에서 제외된다!
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public ModelAndView selectAll() {
		List<Notice> list = boardService.selectAll();
		System.out.println("리스트 : "+list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("board/list");
		return mav;
	}
}