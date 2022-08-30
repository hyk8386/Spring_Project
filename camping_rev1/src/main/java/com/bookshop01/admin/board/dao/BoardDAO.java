package com.bookshop01.admin.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.bookshop01.admin.board.vo.BoardVO;

public interface BoardDAO {
	
		public List selectBoardList() throws DataAccessException ;
		
		public BoardVO textView(int bno) throws DataAccessException ;
}
