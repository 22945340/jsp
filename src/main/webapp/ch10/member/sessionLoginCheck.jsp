<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<% 
	String memberId = (String) session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;
%>

<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 검사</title>
</head>
<body>

<%
	if(login){
%>
아이디 "<%= memberId%>"로 로그인 한 상태 <br />

<%
	} else{
%>
<script>
alert("로그인이필요합니다.");
location.href = "sessoinLoginForm.jsp";
</script>
<%
	}
%>
</body>
</html>