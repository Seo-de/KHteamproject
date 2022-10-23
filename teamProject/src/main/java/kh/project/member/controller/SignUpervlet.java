package kh.project.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kh.project.member.model.service.MemberService;
import kh.project.member.model.vo.Member;

@WebServlet("/member/signUp")
public class SignUpervlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/member/signUp.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String memberEmail = req.getParameter("memberEmail");
		String memberPw = req.getParameter("memberPw");
		String memberName = req.getParameter("memberName");
		String memberBirth = req.getParameter("memberBirth");
		
		Member member = new Member();
		member.setMemberEmail(memberEmail);
		member.setMemberPw(memberPw);
		member.setMemberName(memberName);
		member.setMemberBirth(memberBirth);
		
		try {
			MemberService service = new MemberService();
			
			int result = service.signUp(member);
			
			String path = null;
			HttpSession session = req.getSession(); 
			
			if(result > 0) { // 성공
				path="#"; 
				session.setAttribute("message", "회원 가입 성공!!!");
			}else {
				path="/member/signUp"; // 회원 가입 페이지(get)
				session.setAttribute("message", "회원 가입 실패...");
			}
			resp.sendRedirect(path);
		} catch (Exception e) {
			e.printStackTrace();
			
			String errorMessage = "회원가입 중 문제가 발생했습니다.";
			
			req.setAttribute("errorMessage", errorMessage);
			req.setAttribute("e", e);
			
			String path = "/WEB-INF/views/common/error.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
