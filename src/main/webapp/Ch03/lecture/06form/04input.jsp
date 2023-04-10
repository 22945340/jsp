<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form 요소 연습</h1>
	<form action="">
		<input type="number" name="num1" value="100" /> 
		<input type="submit" value="+" />
		<input type="number" name="num2" value="200" />
	</form>
	
	<hr />
	
	<!-- num1과 num2를 더한 값 출력 -->
	<h3>num1 : <%= request.getParameter("num1")%></h3>
	<h3>num2 : <%= request.getParameter("num2")%></h3>
	
	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	
	if (num1 == null || num2 == null) {
		out.print("<h3>값을 입력해주세요</h3>");
	} else if (num1.isEmpty() || num2.isEmpty()) {
		out.print("<h3>값을 입력해주세요</h3>");
	} else {
	%>
		<h3><%= num1 %> + <%= num2 %> 
		= <%= Integer.parseInt(num1) + Integer.parseInt(num2) %></h3>
	<%
	}
	
	%>
</body>
</html>







