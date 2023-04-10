<%@page import="com.study.ch05.bean.Bean03"%>
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
	// <String, Bean03>을 엔트리로 갖는 map을 만들어서 attribute(page 영역) 추가
	Map<String, Bean03> map = new HashMap<>();
	
	Bean03 b1 = new Bean03();
	Bean03 b2 = new Bean03();
	
	b1.setLastName("heugnmin");
	b1.setFirstName("son");
	
	b2.setLastName("jisung");
	b2.setFirstName("park");
	
	map.put("person1", b1);
	map.put("person2", b2);
	
	pageContext.setAttribute("people", map);
	
	
	
	%>
	<p>${people.person1.fullName }</p> <!-- son heungmin -->
	<p>${people.person2.fullName }</p> <!-- park jisung -->

</body>
</html>