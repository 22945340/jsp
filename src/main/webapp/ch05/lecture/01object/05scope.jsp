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
	<h1>session scope</h1>
	<%
	request.setAttribute("attr1", "value1");
	session.setAttribute("attr2", "value2");
	%>
	
	<div>
	attr1 (request) : <%=request.getAttribute("attr1") %>
	</div>
	
	<div>
	attr2 (session) : <%=session.getAttribute("attr2") %>
	</div>
	
	<a href="06scope.jsp">06scope.jsp로 이동</a>
	
</body>
</html>