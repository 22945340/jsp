<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>checkbox(request.getParameterValues) 연습</h1>
	<form action="">
		<h3>좋아하는 영화 장르</h3>
		<input type="checkbox" name="movie" value="sf" /> SF 
		<input type="checkbox" name="movie" value="action" /> 액션 
		<input type="checkbox" name="movie" value="comedy" /> 코미디
		
		<h3>좋아하는 음악 장르</h3>
		<input type="checkbox" name="song" value="dance" /> 댄스 
		<input type="checkbox" name="song" value="rock" /> 락 
		<input type="checkbox" name="song" value="balad" /> 발라드
		
		<br />
		<input type="submit" value="전송" />
	</form>
	<hr />
	
	<%
		 String[] movies = request.getParameterValues("movie");
		String[] songs = request.getParameterValues("song");

		String likeMovies = "좋아하는 영화 : ";
		String likeSongs = "좋아하는 노래 : ";

		if (movies == null) likeMovies += "없음";
		else {
			for (String movie : movies) {
				likeMovies += movie;
				likeMovies += " ";
			}
		}
		if (songs == null) likeSongs += "없음";
		else {
			for (String song : songs) {
				likeSongs += song;
				likeSongs += " ";
			}
		}

		out.print(likeMovies);
		out.print("<br>");
		out.print(likeSongs);
	%>

</body>
</html>