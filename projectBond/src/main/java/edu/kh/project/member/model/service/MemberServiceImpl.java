package edu.kh.project.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.project.member.model.dao.MemberDAO;
import edu.kh.project.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO dao;

	/**
	 * 로그인
	 */
	@Override
	public Member login(Member inputMember) {
		
		Member loginMember = dao.login(inputMember.getMemberEmail());
		
//		if(loginMember != null) {
//			loginMember.setMemberPw(null);
//		}else {
//			loginMember=null;
//		}
		
		return loginMember;
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public int signUp(Member inputMember) {
		
		int result = dao.signUp(inputMember);
		
		return result;
	}

}
