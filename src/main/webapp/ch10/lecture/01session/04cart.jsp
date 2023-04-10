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
	<form method="post">
		<select name="product" id="">
			<option value="apple">apple</option>
			<option value="banana">banana</option>
			<option value="milk">milk</option>
			<option value="beer">beer</option>
			<option value="water">water</option>
		</select>
		<input type="submit" value="장바구니 담기" />
	</form>
	
	<hr />
	<h3>장바구니</h3>
	<%
	List<String> cart = (List<String>) session.getAttribute("cart");
	if (cart == null) {
		cart = new ArrayList<>();
		session.setAttribute("cart", cart);
	}
	String product = request.getParameter("product");
	if (product != null && !product.isEmpty()) {
		cart.add(product);
	}
	out.println("<ul>");
	for (String c : cart) {
		out.println("<li>");
		out.println(c);
		out.println("</li>");
	}
	out.println("</ul>");
	%>
	

</body>
</html>










