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
	pageContext.setAttribute("myAttr1", 99);
	request.setAttribute("myAttr2", 300);
	session.setAttribute("myAttr3", "hello world");
	application.setAttribute("myAttr4", "hello jsp");
	%>
	
	<!-- hello jsp -->
	<p>${myAttr4}</p>
	<!-- hello world -->
	<p>${myAttr3 }</p>
	<!-- 300 -->
	<p>${myAttr2 }</p>
	<!-- 99 -->
	<p>${myAttr1 }</p>
	
</body>
</html>