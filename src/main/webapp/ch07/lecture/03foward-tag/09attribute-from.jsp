<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	List<String> names = List.of("강백호", "서태웅", "송태섭");
	request.setAttribute("nameList", names);
%>
<jsp:forward page="10attribute-to.jsp"></jsp:forward>