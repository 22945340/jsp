<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<%
	session.invalidate();
%>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

<script>
alert("로그아웃하였습니다.");
location.href = "sessoinLoginForm.jsp";
</script>


</body>
</html>