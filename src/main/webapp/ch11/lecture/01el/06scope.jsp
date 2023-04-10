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
	pageContext.setAttribute("myAttr2", "page Value1");
	request.setAttribute("myAttr2", "request Value1");
	
	session.setAttribute("myAttr3", "session Value1");
	request.setAttribute("myAttr3", "request Value2");
	
	session.setAttribute("myAttr4", "session Value2");
	application.setAttribute("myAttr4", "application Value2");
	
	pageContext.setAttribute("myAttr5", "page Value2");
	application.setAttribute("myAttr5", "application Value3");
	%>
	
	<p>${myAttr2 }</p> <!-- page -->
	<p>${myAttr3 }</p> <!-- request -->
	<p>${myAttr4 }</p> <!-- session -->
	<p>${myAttr5 }</p> <!-- page -->


</body>
</html>