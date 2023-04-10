<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form 요소 연습</h1>
	<form action="">
		몇 줄 ? <input type="number" value="1" name="line" /> <input
			type="submit" value="그리기" />
	</form>

	<hr />
	<%
	String line = request.getParameter("line");
	if (line == null ||line.isEmpty()) {
		out.print("<h3>값을 입력해 주세요</h3>");
	} else {
		int lineNum = Integer.parseInt(line);

		if (lineNum < 0) { 
			out.print("<h3>0 이상의 수를 입력해 주세요</h3>");
		} else {
			for (int i = 1; i <= lineNum; i++) {
				for (int j = 0; j < i; j++) {
					out.print("*");
				}
				out.print("<br>");
			}

		}
	}
	%>
</body>
</html>







