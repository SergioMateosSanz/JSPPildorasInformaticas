<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align:center">Agencia de viajes</h1>
	
	<%
		String ciudadFavorita = "Madrid";
		Cookie[] lasCookies = request.getCookies();
		if (lasCookies != null){
			for (Cookie c:lasCookies){
				if ("agenciaviajes.ciudadfavorita".equals(c.getName())){
					ciudadFavorita = c.getValue();
					break;
				}
			}
		}
	%>

	<h3>Vuelos a: <%= ciudadFavorita %></h3>
</body>
</html>