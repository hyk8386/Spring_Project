package com.bookshop01.admin.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.bookshop01.admin.board.vo.BoardVO;
<<<<<<< HEAD
=======
import com.bookshop01.admin.board.vo.Criteria;
>>>>>>> jiho

public interface BoardDAO {
	
		public List selectBoardList() throws DataAccessException ;
		
		public BoardVO textView(int bno) throws DataAccessException ;
		
		public int deleteTextView(int bno) throws DataAccessException;
		
		public int inerstTextView(BoardVO boardVO) throws DataAccessException;
		
		public int updateTextView(BoardVO boardVO) throws DataAccessException;
<<<<<<< HEAD
=======
		
		public List<BoardVO> getListWithPaging(Criteria cri);
		
		public int countBoardList() throws DataAccessException;
>>>>>>> jiho
}
