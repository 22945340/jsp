<%@page import="com.study.ch05.bean.Bean04"%>
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
	<%
	Bean04 b1 = new Bean04();
	Bean04 b2 = new Bean04();
	Bean04 b3 = new Bean04();
	Bean04 b4 = new Bean04();
	pageContext.setAttribute("list", List.of(b1, b2, b3, b4));
	
	b1.setName("ironman");
	b2.setName("captain");
	b3.setName("antman");
	b4.setName("spiderman");
	
	b1.setAge(50);
	b2.setAge(40);
	b3.setAge(30);
	b4.setAge(20);
	
	b1.setAddress("london");
	b2.setAddress("seoul");
	b3.setAddress("paris");
	b4.setAddress("new york");
	
	b1.setMarried(true);
	b2.setMarried(true);
	b3.setMarried(false);
	b4.setMarried(false);
	%>
	<!-- 테이블 만들기 -->
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>이름</th>
				<th>나이</th>
				<th>결혼</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="member" varStatus="status">
				<tr>
					<th>${status.count }</th>
					<th>${member.name }</th>
					<th>${member.age }</th>
					<th>${member.married }</th>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>









