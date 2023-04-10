<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<c:choose>
		<c:when test="${empty paramValues.movie }">
			<script>
				alert("선택한 영화가 없습니다");
				history.go(-1); 
			</script>
		</c:when>
		<c:otherwise>
			<h1>선택한 영화</h1>
			<hr />
			<div>
				<ul>
					<c:forEach items="${paramValues.movie }" var="movie">
						<li>${movie }</li>
					</c:forEach>
				</ul>
			</div>
			<a href="16form.jsp">뒤로가기</a>
		</c:otherwise>
	</c:choose>
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>