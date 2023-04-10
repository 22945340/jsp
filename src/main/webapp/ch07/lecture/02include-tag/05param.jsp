<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>05번</h1>
	
	<jsp:include page="06sub.jsp">
		<jsp:param value="green" name="color"/>
		<jsp:param value="pink" name="bg"/>
	</jsp:include>
	
	<jsp:include page="06sub.jsp">
		<jsp:param value="white" name="color"/>
		<jsp:param value="black" name="bg"/>
	</jsp:include>
</body>
</html>









