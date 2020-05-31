<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Ejemplos objetos predefinidos</title>
</head>
<body>
	<h2>Objetos predefinidos JSP</h2>
	Petición datos del navegador: <%= request.getHeader("User-Agent") %>
	<br>
	<br>
	Idioma del navegador: <%= request.getLocale() %>
</body>
</html>