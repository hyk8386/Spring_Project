package com.bookshop01.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bookshop01.admin.board.dao.BoardDAO;
import com.bookshop01.admin.board.vo.BoardVO;

@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List boardList() throws Exception {
		List boardList = boardDAO.selectBoardList();
		return boardList;
	}

	@Override
	public BoardVO textView(int bno) throws Exception {
		BoardVO textView = boardDAO.textView(bno);
		return textView;
	}



}
