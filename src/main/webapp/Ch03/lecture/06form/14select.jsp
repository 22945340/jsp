<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option example</h1>
	<!-- 코드 작성 -->
	통신사 선택<br />
	<form action="">
		<select name="phone" id="">
			<option value="SKT">SKT</option>
			<option value="KT">KT</option>
			<option value="LGU+">LGU+</option>
		</select>
		<br />영화선택 <br />
		<select name="movie" id="" multiple>
			<option value="movie1">movie1</option>
			<option value="movie2">movie2</option>
			<option value="movie3">movie3</option>
			<option value="movie4">movie4</option>
			<option value="movie5">movie5</option>
		</select>
		
		<input type="submit" value="전송" />
	</form>
	
	<hr />
	<%
	String phone = request.getParameter("phone");
	if (phone != null) {
		out.println("<h1>");
		out.println("통신사 : " + phone);
		out.println("</h1>");
	}
	
	String[] movies = request.getParameterValues("movie");
	if (movies != null) {
		out.println("<h1>선택된 영화들</h1>");
		out.println("<ul>");
			for (String m : movies) {
				out.println("<li>");
				out.println(m);
				out.println("</li>");
			}
		out.println("</ul>");
	}
	%>	
	
</body>
</html>






