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
	<h1>17번</h1>
	<hr />
	<p>${(param.numA + 0) > (param.numB + 0) ? '첫번째' : '두번째' } 수가 더 큽니다.</p>	
	
</body>
</html>