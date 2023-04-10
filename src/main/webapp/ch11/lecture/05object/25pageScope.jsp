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
	<h1>pageScope</h1>
	<%
	pageContext.setAttribute("attr1", "value 1");
	%>
	<p>${attr1 }</p>
	<p>${pageScope.attr1 }</p>
</body>
</html>