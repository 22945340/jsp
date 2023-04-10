<%@page import="javax.naming.Context"%>
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
	// map을 만들고 attribute(page 영역) 추가
	Map<String, String> map = new HashMap<>();
	map.put("mykey1", "java");
	map.put("mykey2", "spring");
	map.put("name", "서태웅");
	map.put("address", "신촌");
	
	pageContext.setAttribute("mymap", map);
	
	
	%>
	
	<p>${mymap.mykey1 }</p>  <!-- java -->
	<p>${mymap.mykey2 }</p>  <!-- spring -->
	<p>${mymap.name }</p>  <!-- 서태웅 -->
	<p>${mymap["address"] }</p> <!-- 신촌 -->
	

</body>
</html>