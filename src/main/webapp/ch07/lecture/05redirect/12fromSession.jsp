<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
request.setAttribute("address", "seoul");
session.setAttribute("address", "jeju");

String location = "13toSession.jsp";
response.sendRedirect(location);
%>