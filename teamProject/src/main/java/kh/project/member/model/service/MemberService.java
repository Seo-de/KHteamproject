package kh.project.member.model.service;

import kh.project.member.model.dao.MemberDAO;
import kh.project.member.model.vo.Member;
import static kh.project.common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {
	
	MemberDAO dao = new MemberDAO();

	/** 로그인 서비스
	 * @param member
	 * @return loginMember
	 * @throws Exception
	 */
	public Member login(Member member) throws Exception{
		
		Connection conn = getConnection();
		Member loginMember = dao.login(conn, member);
		close(conn);
		return loginMember;
	}

	/** 회원가입 서비스
	 * @param member
	 * @return result
	 * @throws Exception
	 */
	public int signUp(Member member) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.signUp(conn, member);
		if(result>0) commit(conn);
		else 	     rollback(conn);
		
		close(conn);
		
		return result;
	}

}
