<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>3번 파일</h1>
	
	<!-- jsp:param request 객체에 parameter 추가 -->
	<jsp:include page="04sub.jsp">
		<jsp:param value="value1" name="param1"></jsp:param>
	</jsp:include>

</body>
</html>