<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
	<title>Registro JSP</title>
</head>
<body>
	<h3>Los datos introducidos son los siguientes</h3> <br>
	Nombre: <%= request.getParameter("nombre") %> <br>
	Apellido: <%= request.getParameter("apellido") %>
</body>
</html>