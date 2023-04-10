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
	List<String> list1 = List.of("css", "html", "jquery", "bootstrap");
	
	pageContext.setAttribute("num1", 0);
	pageContext.setAttribute("num2", 2);
	pageContext.setAttribute("myList1", list1);
	%>
	
	<p>${myList1[num1] }</p> <!-- css -->
	<p>${myList1[num2] }</p> <!-- jquery -->
	<p>${myList1[3] }</p> <!-- bootstrap -->
	

</body>
</html>