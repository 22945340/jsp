<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
Map<String, String> map = (Map<String, String>) request.getAttribute("sports");
%>

<h1><%= map.get("basketball") %></h1>
<h1><%= map.get("soccer") %></h1>
