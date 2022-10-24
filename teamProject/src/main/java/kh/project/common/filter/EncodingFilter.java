package kh.project.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;


@WebFilter(filterName = "encodingFilter", urlPatterns = "/*")
public class EncodingFilter extends HttpFilter implements Filter {

	// 서버 실행 시 / 서버 실행 중 필터 클래스 수정 시
	public void init(FilterConfig fConfig) throws ServletException {
		System.err.println("인코딩 필터 초기화");
	}

	// 기존 필터 객체를 파괴하는 메서드
	public void destroy() {
		System.out.println("인코딩 필터 파괴");
	}


	// 필터 역할을 수행하는 메서드
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");

		response.setCharacterEncoding("UTF-8");
		
		chain.doFilter(request, response);

	}



}
