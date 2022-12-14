package edu.kh.project.member.model.service;

import edu.kh.project.member.model.vo.Member;

public interface MemberService {

	
	/** 로그인 서비스
	 * @param inputMember
	 * @return loginMember
	 */
	public abstract Member login(Member inputMember);
	
	/** 회원가입 서비스
	 * @param inputMember
	 * @return loginMember
	 */
	public abstract int signUp(Member inputMember);
}
