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
		<c:when test="${(param.dan >= 2) && (param.dan <= 9) }">
			<h2>${param.dan }단</h2> 
			<hr />
			<c:forEach begin = "1" end = "9" var = "i">
				<p>${param.dan } X ${i } = ${param.dan * i }</p>	
			</c:forEach>
		</c:when>
		<c:otherwise>
			<script>
			alert("2~9사이의 숫자를 입력해주세요");
			history.go(-1);
			</script>		
		</c:otherwise>
		
	</c:choose>

	<a href="07form.jsp">7번 파일로 가기</a>
</body>
</html>