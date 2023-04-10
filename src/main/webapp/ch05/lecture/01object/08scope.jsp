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
	<div>
	attr1(session) : <%= session.getAttribute("attr1") %>
	</div>
	
	<div>
	attr2(application) : <%= application.getAttribute("attr2") %>
	</div>
</body>
</html>