<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="get">
		ID <input type="text" name="userid" /> <br /> 
		pw <input type="password" name="userpw" /> <br /> 
		<input type="submit" value="로그인" />
	</form>

	<hr />

	<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("userpw");
	// id, pw 일치하는지??
	// 존재하는 회원인지
	if (id !=null && pw !=null) {
		if (id.equals("user1") && pw.equals("1234")) out.print("로그인성공!");
		else out.print("로그인실패..");
	} else out.print("값을 입력하세요");
	
	%>

	<h3>
		id :
		<%=request.getParameter("userid")%></h3>
	<h3>
		pw :
		<%=request.getParameter("userpw")%></h3>
</body>
</html>