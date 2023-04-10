<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
	<!-- 코드 완성 -->
	<h3>성별</h3>
	남성<input type="radio" name="gender" value="male" />
	여성<input type="radio" name="gender" value="female" />
	<br />
	
	<h3>통신사</h3>
	SKT<input type="radio" name="phone" value="SKT" />
	KT<input type="radio" name="phone" value="KT" />
	LGU+<input type="radio" name="phone" value="LGU+" />
	<br />
	
	<input type="submit" />
	</form>
	<hr />
	
	<!-- 남 or 여 -->
	<h3>성별 : <%=request.getParameter("gender") %></h3>
	<!-- SKT or KT or LGU+ -->
	<h3>통신사 : <%= request.getParameter("phone") %></h3>
</body>
</html>