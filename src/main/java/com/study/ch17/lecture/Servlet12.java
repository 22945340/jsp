package com.study.ch17.lecture;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class Servlet12
 */
@WebServlet("/lec/sample12")
public class Servlet12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet12() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. request 파라미터 얻기
		int index = Integer.parseInt(request.getParameter("index"));
				
		
		// 2. business  logic 처리(삭제 처리)
		HttpSession session = request.getSession();
		List<String> list = (List<String>) session.getAttribute("db"); 
		list.remove(index);

		// 3. add attribute 
		
		// 4. forward/ redirect
		String location = request.getContextPath() + "/lec/sample09";
		response.sendRedirect(location);
	}

}
