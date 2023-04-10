<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="others" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="attr1"%>
<%@ attribute name="attr2"%>

<div>
	${attr1 }, ${attr2 }
</div>

<div>
	명시되지 않은 attribute들을 Map형식으로 저장 <br />
	${others } 	<br />
	${others.attr3 } <br />
	${others.attr4 } <br />
</div>