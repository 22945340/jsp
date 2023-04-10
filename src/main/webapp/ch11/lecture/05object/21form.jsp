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
	<h1>21번 파일</h1>
	<form action="22process.jsp">
		<label for="email">이메일</label>
		<input type="text" name="email" value="email.naver.com" id="email" /><br />
		<label for="movies">장르 선택</label><br />
		<select name="genre" id="movies" multiple="">
			<option value="코미디">코미디</option>
			<option value="액션">액션</option>
			<option value="SF">SF</option>
			<option value="로멘스">로멘스</option>
			<option value="스릴러">스릴러</option>
		</select>
		<input type="submit" value="전송" />
	</form>

</body>
</html>