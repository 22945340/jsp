<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.count  > 0}">
			<c:forEach begin="1" end="${param.count }">
				<p>${param.name }</p>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<script>
			alert("1이상의 수를 입력해주세요");
			history.go(-1);
			</script>
		</c:otherwise>
	</c:choose>
	
	
	<a href="03form.jsp">3번으로 돌아가기</a>
</body>
</html>