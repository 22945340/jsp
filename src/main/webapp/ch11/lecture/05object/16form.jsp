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
	<h1>16번 파일</h1>
	<form action="17process.jsp">
		이메일 : <input type="text" name="email" value="email@naver.com" /> <br />
		좋아하는 음식 <br />
		돈까스<input type="checkbox" name="food" value="돈까스" />
		치킨<input type="checkbox" name="food" value="치킨" />
		피자<input type="checkbox" name="food" value="피자" />
		햄버거<input type="checkbox" name="food" value="햄버거" />
		초밥<input type="checkbox" name="food" value="초밥" />
		<input type="submit" value="전송" />
	</form>

</body>
</html>