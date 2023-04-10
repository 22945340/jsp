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
	pageContext.setAttribute("a", "");
	pageContext.setAttribute("b", List.of());
	pageContext.setAttribute("c", Map.of());
	pageContext.setAttribute("d", null);
	
	pageContext.setAttribute("e", "hello");
	pageContext.setAttribute("f", List.of("hi"));
	pageContext.setAttribute("g", Map.of("a", "b"));
	%>
	
	<p>${not empty a }</p>
	<p>${not empty b }</p>
	<p>${not empty c }</p>
	<p>${not empty d }</p>
	<p>${not empty e }</p>
	<p>${not empty f }</p>
	<p>${not empty g }</p>
	
	<hr />
	
	<p>${! empty a }</p>
	<p>${! empty b }</p>
	<p>${! empty c }</p>
	<p>${! empty d }</p>
	<p>${! empty e }</p>
	<p>${! empty f }</p>
	<p>${! empty g }</p>

</body>
</html>