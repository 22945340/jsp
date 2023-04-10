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
	<!-- name 파라미터가 없을때 -->
	<c:if test = "${empty param.name }" var = "name">
		<div>
			이름이 없습니다.
		</div>
	</c:if>
	
	<!-- name 파라미터가 있을 때 -->
	<c:if test="${not name }">
		<div>
			${param.name }님
		</div>
	</c:if>	
	
	<!-- moives 파라미터가 없을 때 -->
	<c:if test="${empty param.movies }" var="movies">
		<div>
			선택된 영화가 없습니다.
		</div>
	</c:if>
	
	<!-- movies 파라미터가 있을 때 --> 
	<c:if test="${not movies }">
		<div>
			선택한 영화들
			<ul>
				<li>${paramValues.movies[0] }</li>
				<li>${paramValues.movies[1] }</li>
				<li>${paramValues.movies[2] }</li>
			</ul>
		</div>
	</c:if>
	
	<a href="06form.jsp">6번파일로 이동</a>
	
</body>
</html>
