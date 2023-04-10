<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<%
	Date time = new Date();
	SimpleDateFormat formatter =
	new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>
<body>
세션ID: <%= session.getId() %> <br />
<%
	time.setTime(session.getCreationTime());
%>
세션생성시간: <%=formatter.format(time) %> <br />
<%
	time.setTime(session.getLastAccessedTime());
%>
최근접속시간: <%=formatter.format(time) %> <br />
새 세션인지 : <%=session.isNew() %>


</body>
</html>