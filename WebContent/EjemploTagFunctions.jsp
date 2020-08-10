<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo uso Tag functions</title>
</head>
<body>
	<c:set var="datos" value="Ana, López, Directora, 75000"></c:set>
	<c:set var="datosArray" value="${fn:split(datos,',')}"></c:set>
	<input type="text" value="${datosArray[0]}"><br>
	<input type="text" value="${datosArray[1]}"><br>
	<input type="text" value="${datosArray[2]}"><br>
	<input type="text" value="${datosArray[3]}"><br>
	
	<c:forTokens items="Ana,Lopez,Directora,75000" delims="," var="name">
 	<input type="text" value="${name}"><br> </c:forTokens>
 
</body>
</html>