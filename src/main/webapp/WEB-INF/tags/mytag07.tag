<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="name" %>
<%@ attribute name="age" %>
<h3>${name }'s 프로필</h3>
<ul>
	<li>이름: ${name }</li>
	<li>나이: ${age }</li>
</ul>