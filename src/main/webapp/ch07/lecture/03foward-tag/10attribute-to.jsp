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
	<!--
	9번 파일로 첫 요청을 보낸 후 10번 파일로 forward 하도록 
	 -->
	<%
	List<String> names = (List<String>) request.getAttribute("nameList");
	%>
	<h1>1번 이름 : <%= names.get(0) %></h1>
	<h1>2번 이름 : <%= names.get(1) %></h1>
	<h1>3번 이름 : <%= names.get(2) %></h1>
</body>
</html>