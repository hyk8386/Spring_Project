package com.bookshop01.admin.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookshop01.admin.board.service.BoardService;
import com.bookshop01.admin.board.vo.BoardVO;



@Controller("boardController")
@EnableAspectJAutoProxy
public class BoardControllerImpl implements BoardController{

	@Autowired 
	private BoardService boardService;
	
	@Override
	@RequestMapping(value="/admin/board/boardList.do" ,method = RequestMethod.GET)
	public ModelAndView listBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		
		ModelAndView mav = new ModelAndView(viewName);
		List boardList = boardService.boardList();
		mav.addObject("boardList", boardList);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/board/textview.do" ,method = RequestMethod.GET)
	public ModelAndView textView(@RequestParam("bno") int bno, 
								HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		System.out.println("bno="+bno);
		ModelAndView mav = new ModelAndView(viewName);
		BoardVO textview = boardService.textView(bno);
		mav.addObject("textview", textview);
		return mav;
	}
}

