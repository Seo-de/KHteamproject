package kh.project.member.model.dao;
import static kh.project.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import kh.project.common.JDBCTemplate;
import kh.project.member.model.vo.Member;

public class MemberDAO {
	
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Properties prop;
	
	public MemberDAO() { 
		
		try {
			
			prop = new Properties();
			
			String filePath 
			= JDBCTemplate.class.getResource("/kh/project/sql/member-sql.xml").getPath();
			
			prop.loadFromXML( new FileInputStream(filePath) );
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** 로그인 DAO
	 * @param conn
	 * @param member
	 * @return loginMember
	 * @throws Exception
	 */
	public Member login(Connection conn, Member member) throws Exception{
		
		Member loginMember = null;
		
		try {
			String sql = prop.getProperty("login");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberEmail());
			pstmt.setString(2, member.getMemberPw());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				loginMember = new Member();
				
				loginMember.setMemberNo(rs.getInt("MEMBER_NO"));
				loginMember.setMemberEmail(rs.getString("MEMBER_EMAIL"));
				loginMember.setMemberName(rs.getString("MEMBER_NAME"));
				loginMember.setMemberTel(rs.getString("MEMBER_TEL"));
				loginMember.setMemberBirth(rs.getString("MEMBER_BIRTH"));
				loginMember.setProfileImage(rs.getString("PROFILE_IMG"));
				loginMember.setAuthority(rs.getString("AUTHORITY"));
				loginMember.setSignUpDate(rs.getString("SIGNUP_DATE"));
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginMember;
	}

	/** 회원가입 DAO
	 * @param conn
	 * @param member
	 * @return result
	 * @throws Exception
	 */
	public int signUp(Connection conn, Member member) throws Exception{
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("signUp");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberEmail());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberBirth());
			pstmt.setString(5, member.getMemberTel());
			
			result=pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
