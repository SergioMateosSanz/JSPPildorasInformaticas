<%@page import="calculosMatematicos.Calculos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Invocando metodos</title>
</head>
<body>
	La suma de 5 y 7 es: <%= calculosMatematicos.Calculos.metodoSuma(5, 7)  %>
	<br>
	La resta de 5 y 7 es: <%= Calculos.metodoResta(5, 7)  %>
	<br>
	La multiplicación de 5 y 7 es: <%= Calculos.metodoMultiplica(5, 7) %>


</body>
</html>