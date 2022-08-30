package com.bookshop01.member.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.bookshop01.member.vo.MemberVO;

public interface MemberDAO {
	public MemberVO login(Map loginMap) throws DataAccessException;
	public void insertNewMember(MemberVO memberVO) throws DataAccessException;
	public String selectOverlappedID(String id) throws DataAccessException;
<<<<<<< .merge_file_a09000
=======
	public void delete(String memberId)throws Exception;
	public String returnPW(String memberId) throws Exception;
>>>>>>> .merge_file_a03992
}
