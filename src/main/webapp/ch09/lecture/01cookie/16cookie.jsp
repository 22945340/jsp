<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 1. 쿠키명 : my-cookie-7
	//	  쿠키값 : my-value-7
	response.addCookie(new Cookie("my-cookie-7", "my-value-7"));
	
	// 2. 쿠키명 : my-cookie-8
	// 	  쿠키값 : 뉴진스
	//      경로 : contextPath
	//  httpOnly : true
	//  지속시간 : 5분
	
	String cookieValue = "뉴진스";
	String encodedCookieValue = URLEncoder.encode(cookieValue);
	
	Cookie cookie = new Cookie("my-cookie-8", encodedCookieValue);
	
	cookie.setPath(request.getContextPath());
	cookie.setHttpOnly(true);
	cookie.setMaxAge(300);
	
	response.addCookie(cookie);
	
	%>
	
	<a href="13view-cookie.jsp">한글값 쿠키 보러 가기</a>
</body>
</html>