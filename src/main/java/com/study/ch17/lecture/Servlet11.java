package com.study.ch17.lecture;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * Servlet implementation class Servlet11
 */
@WebServlet("/lec/sample11")
public class Servlet11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet11() {
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
		// get request parameter
		String indexStr = request.getParameter("index");
		String name = request.getParameter("name");
		int index = Integer.parseInt(indexStr);
		
		// business logic
		HttpSession session = request.getSession();
		List<String> db = (List<String>) session.getAttribute("db");
		db.set(index, name);
		
		// add attribute
		
		// forword / redirect
		String location = request.getContextPath() + "/lec/sample09";
		response.sendRedirect(location);
		
	}

}







