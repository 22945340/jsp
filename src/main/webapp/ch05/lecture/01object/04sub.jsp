<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("attr2", "value2");
	request.setAttribute("attr4", "value4");
	
	Object o = pageContext.getAttribute("attr");
	Object o2 = request.getAttribute("attr3");
	%>
	
	<h1>04sub.jsp 시작</h1>
	<hr />
	<div>
	attr1(pageContext(03scope)): <%= o %>
	</div>
	<div>
	attr2(pageContext(04scope)): <%= pageContext.getAttribute("attr2") %>
	</div>
	<div>
	attr3(request(03scope)): <%=o2 %>
	</div>
	<div>
	attr4(request(04scope)) : <%= request.getAttribute("attr4") %>
	</div>
	<hr />
	<h1>04sub.jsp 종료</h1>
</body>
</html>