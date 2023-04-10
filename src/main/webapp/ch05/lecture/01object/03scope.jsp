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
	<h1>request scope</h1>
	
	<%
	// page 영역
	pageContext.setAttribute("attr1", "value1");
	
	// request 영역
	request.setAttribute("attr3", "value3");
	%>
	
	<jsp:include page="04sub.jsp"></jsp:include>
	
	<%
	String a1 = (String) pageContext.getAttribute("attr1");
	%>
	
	<div>
	attr1 (pageContext(03scope)): <%= a1 %>
	</div>
	<div>
	attr2(pageContext(04scope)): <%= pageContext.getAttribute("attr2") %>
	</div>
	<div>
	attr3(request(03scope)): <%= request.getAttribute("attr3") %>
	</div>
	<div>
	attr4(request(04scope)) : <%= request.getAttribute("attr4") %>
	</div>
</body>
</html>