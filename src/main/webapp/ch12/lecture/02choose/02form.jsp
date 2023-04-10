<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="03process.jsp">
		<select name="genre" id="">
			<option value="">장르선택</option>
			<option value="action">액션</option>
			<option value="horror">호러</option>
			<option value="family">가족</option>
		</select>
		<input type="submit" value="전송" />		
	
	</form>

</body>
</html>