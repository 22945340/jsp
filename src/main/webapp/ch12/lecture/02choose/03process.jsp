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
		<c:when test="${param.genre == 'action' }">
			<div>
				추천영화는 어벤져스입니다.
			</div>
		</c:when>
		
		<c:when test="${param.genre == 'horror' }">
			<div>
				추천영화는 스크림입니다.
			</div>
		</c:when>
		
		<c:when test="${param.genre == 'family' }">
			<div>
				추천영화는 아바타입니다.
			</div>
		</c:when>
		
		<c:otherwise>
			<script>
			alert("장르를 선택해주세요");
			history.go(-1);
			</script>
		</c:otherwise>
	</c:choose>
	
	<a href="02form.jsp">2번 파일로 이동</a>

	
</body>
</html>