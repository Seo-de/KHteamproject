package edu.kh.project.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.project.member.model.service.MemberService;
import edu.kh.project.member.model.vo.Member;

@Controller
@SessionAttributes({"loginMember", "message"})
public class MemberController {
	
	@Autowired
	private MemberService service;

	@PostMapping("/member/login")
	public String login(Member inputMember, Model model, RedirectAttributes ra,
				@RequestParam(value="saveId", required = false) String saveId,
				HttpServletResponse resp,
				@RequestHeader(value="referer")String referer) {
		
		Member loginMember = service.login(inputMember);
		
		String path=null;
		
		if(loginMember != null) {
			path="/login22";
			
			model.addAttribute("loginMember", loginMember);
			
			Cookie cookie = new Cookie("saveId", loginMember.getMemberEmail());
			if(saveId != null) {
				cookie.setMaxAge(60*60*24*90);
			}else {
				cookie.setMaxAge(0);
			}
			cookie.setPath("/");
			resp.addCookie(cookie);
		}else {
			path=referer;
			ra.addFlashAttribute("message","아이디 또는 비밀번호가 일치하지 않습니다.");
		}
		
		return "redirect:"+path;
	}
	
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}

	@GetMapping("/member/signUp")
	public String signUp() {
		return "member/signUp";
	}

	@PostMapping("/member/signUp")
	public String signUp(Member inputMember, RedirectAttributes ra,
					@RequestHeader("referer") String referer) {
		
		int result = service.signUp(inputMember);
		
		String path = null;
		String message = null;
		
		if(result>0) {
			path="/member/signUp22";
			message = "회원가입 성공";
		}else {
			path="referer";
			message="회원가입 실패";
			
			inputMember.setMemberPw(null);
			ra.addFlashAttribute("tempMember", inputMember);
			
		}
		ra.addFlashAttribute("message",message);
		return "redirect:"+path;
	}
	
	
}
