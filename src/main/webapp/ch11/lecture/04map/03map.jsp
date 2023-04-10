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
	Map<String, String> map = Map.of("mykey", "myValue", "yourkey","yourValue");
	
	pageContext.setAttribute("mymap", map);
	pageContext.setAttribute("mykey", "yourkey");
	
	%>

	<p>${mymap[mykey] }</p> 
	<p>${mymap.mykey }</p>
	<p>${mymap["mykey"] }</p>
	

</body>
</html>