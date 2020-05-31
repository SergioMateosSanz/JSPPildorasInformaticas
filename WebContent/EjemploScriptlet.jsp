<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Ejemplo Scriptlet</title>
</head>
<body>
	<h1>Ejemplo Scriptlet</h1>
	<%
		for (int i=0;i<10;i++){
			out.println("Este es el valor de i: "+i+"<br>");
		}
	%>
</body>
</html>