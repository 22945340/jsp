package com.study.ch19.lecture;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

/**
 * Servlet Filter implementation class Filter15
 */
@WebFilter("/lec/private1/*")
public class Filter15 extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public Filter15() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("비공개 컨텐츠 접근 중..");
		String admin = request.getParameter("admin");
		
		if (admin != null) {
			// pass the request along the filter chain
			chain.doFilter(request, response);			
		} else {
			HttpServletRequest req = (HttpServletRequest) request;
			String location = req.getContextPath() + "/lec/public/content1";
			HttpServletResponse res = (HttpServletResponse) response;
			res.sendRedirect(location);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
