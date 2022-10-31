package kh.project.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

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
