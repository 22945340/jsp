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
	<h1>23번 post</h1>
	<form action="24process.jsp" method = "post">
	<label for="input1"></label>
	<input type="text" id="input1" name="name" value="서태웅" />
	<br />
	<label for="check1">치킨</label>
	<input type="checkbox" name="food" value="치킨" id="check1" />
	<label for="check1">피자</label>
	<input type="checkbox" name="food" value="피자" id="check1" />
	<label for="check1">햄버거</label>
	<input type="checkbox" name="food" value="햄버거" id="check1" />
	<label for="check1">초밥</label>
	<input type="checkbox" name="food" value="초밥" id="check1" />
	<label for="check1">돈까스</label>
	<input type="checkbox" name="food" value="돈까스" id="check1" />
	<br />
	<input type="submit" value="전송" />
	</form>

</body>
</html>