<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String ciudadFavorita = request.getParameter("ciudadfavorita");

	Cookie miCookie = new Cookie("agenciaviajes.ciudadfavorita",ciudadFavorita);
	miCookie.setMaxAge(365*24*60*60);
	response.addCookie(miCookie);
%>

Gracias por enviar sus preferencias.

<a href="agenciaViajes.jsp">Ir a la agencia de viajes</a>

</body>
</html>