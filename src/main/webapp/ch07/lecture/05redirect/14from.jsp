<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
List<String> nameList = new ArrayList<>();
nameList.add("1번이름");
nameList.add("2번이름");

session.setAttribute("names", nameList);
String location = "15to.jsp";
response.sendRedirect(location);
%>