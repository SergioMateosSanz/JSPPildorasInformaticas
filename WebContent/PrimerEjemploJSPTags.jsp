<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String[] alumnos = {"Pedro", "Juan", "Sandra", "Vicente"};	

	pageContext.setAttribute("losAlumnos", alumnos);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Primer ejemplo JSP Tags</title>
</head>
<body>

	<c:forEach var="temporal" items="${losAlumnos}">
		${temporal} <br>
	</c:forEach>

</body>
</html>