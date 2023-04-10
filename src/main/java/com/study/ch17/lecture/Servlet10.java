package com.study.ch17.lecture;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * Servlet implementation class Servlet10
 */
@WebServlet("/lec/sample10")
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// forward
		String view = "/WEB-INF/view/ch17/view08.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("포스트 요청 받음");
		
		// request 파라미터 꺼내기
		String name = request.getParameter("name");
		
		// business logic
		// 데이터베이스에 이름 추가 (session 으로 간단히 흉내)
		HttpSession session = request.getSession();
		Object o = session.getAttribute("db");
		if (o == null) {
			o = new ArrayList<String>();
			session.setAttribute("db", o);
		}
		List<String> list = (List<String>) o;
		list.add(name);
		
		// add attribute
		
		// forward / redirect
		String location = request.getContextPath() + "/lec/sample09";
		response.sendRedirect(location);
	}

}







