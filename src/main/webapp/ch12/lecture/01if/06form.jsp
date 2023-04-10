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
	<form action="07process.jsp">
		이름 <input type="text" name="name" /> <br />
		영화 선택 (최대 3개)
		<label for="select1">movie1</label>
		<input type="checkbox" name="movies" value="movie1" id = "select1"/>
		<label for="select2">movie2</label>
		<input type="checkbox" name="movies" value="movie2" id = "select2"/>
		<label for="select3">movie3</label>
		<input type="checkbox" name="movies" value="movie3" id = "select3"/>
		<label for="select4">movie4</label>
		<input type="checkbox" name="movies" value="movie4" id = "select4"/>
		<label for="select5">movie5</label>
		<input type="checkbox" name="movies" value="movie5" id = "select5" />
		<br />
		<input type="submit" value="전송" />
	</form>
	
</body>
</html>