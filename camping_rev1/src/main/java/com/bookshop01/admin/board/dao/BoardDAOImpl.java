package com.bookshop01.admin.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bookshop01.admin.board.vo.BoardVO;


@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectBoardList() throws DataAccessException {
		List selectBoardList = sqlSession.selectList("mapper.admin.board.boardList");
		return selectBoardList;
	}

	@Override
	public BoardVO textView(int bno) throws DataAccessException {
		BoardVO textView = (BoardVO)sqlSession.selectOne("mapper.admin.board.textview",bno);
		return textView;
	}

}
