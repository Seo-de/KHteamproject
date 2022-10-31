package edu.kh.project.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class Member {
	
	private int memberNo;
	private String memberEmail;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberBirth;
	private String profileImage;
	private String signUpDate;
	private String memberDeleteFlag;
	private String authority;
	

}
