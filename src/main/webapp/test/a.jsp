<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] names = {"hi", "Hello"};
	%>
	<jsp:forward page="b.jsp">
	<jsp:param value="<%= names %>" name="word"/>
	</jsp:forward>
</body>
</html>