package kh.project.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kh.project.member.model.service.MemberService;
import kh.project.member.model.vo.Member;

@WebServlet("/member/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberService service = new MemberService();
		
		try {
			String inputEmail = req.getParameter("inputEmail");
			String inputPw = req.getParameter("inputPw");
			
			Member member = new Member();
			member.setMemberEmail(inputEmail);
			member.setMemberPw(inputPw);
			
			Member loginMember = service.login(member);
			
			HttpSession session = req.getSession();
			String path = null;
			if(loginMember != null) { // 로그인 성공 시
				path = "/"; // 메인페이지
				
				// 2) Session scope에 속성(값) 추가하기
				session.setAttribute("loginMember", loginMember);
				
				// 3) 세션 만료시간 설정(초 단위 지정)
				//   (클라이언트가 새로운 요청을 할 때 마다 초기화)
				session.setMaxInactiveInterval(60*60*24*3);
				Cookie cookie = new Cookie("saveId", inputEmail);
				if(req.getParameter("saveId") != null ) { // 체크 된 경우
					cookie.setMaxAge(60*60*24*30); // 30일
				} else { // 체크되지 않은 경우
					cookie.setMaxAge(0);
				}
				cookie.setPath("/"); 
				resp.addCookie(cookie);

			} else { // 로그인 실패
				path = req.getHeader("referer");
				session.setAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
			}
			resp.sendRedirect(path);
		} catch (Exception e) {
		    e.printStackTrace();
            
            String errorMessage = "로그인 중 문제가 발생했습니다.";
            
            req.setAttribute("errorMessage", errorMessage);
            req.setAttribute("e", e);
            
            String path = "/WEB-INF/views/common/error.jsp";
            req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
