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
	<h1>논리 연산 (and, or, not)</h1>
	<h3>and</h3>
	<p>${true && true }</p>
	<p>${true && false }</p>
	<p>${false && true }</p>
	<p>${false && false }</p>
	
	<p>${true and true }</p>
	<p>${true and false }</p>
	<p>${false and true }</p>
	<p>${false and false }</p>
</body>
</html>