<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List list = List.of("html", "jsp", "spring");
	%>
	<p><%= list.get(0) %></p>
	<p><%= list.get(1) %></p>
	<p><%= list.get(2) %></p>
	
</body>
</html>







