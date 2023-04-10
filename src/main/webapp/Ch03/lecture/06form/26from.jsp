<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="27to.jsp" method="post">
	이름 <input type="text" name="name" /> <br />
	주소 <input type="text" name="address" /><br />
	영화 선택 <br /> <select name="movie" id="" multiple>	
		<option value="movie1">movie1</option>
		<option value="movie2">movie2</option>
		<option value="movie3">movie3</option>
		<option value="movie4">movie4</option>
		<option value="movie5">movie5</option>
	</select> <br />
	<input type="submit" value="전송" />
</form>
</body>
</html>