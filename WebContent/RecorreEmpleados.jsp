<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.*, java.sql.*, jspTags.Empleado" %>
    
    <% 
    	ArrayList<Empleado> datos=new ArrayList<>();
    
    	Class.forName("com.mysql.jdbc.Driver");
    	try {
    		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?serverTimezone=UTC","root","12345678");
    		Statement miStatement = miConexion.createStatement();
    		String instruccionSql = "SELECT * FROM empleados";
    		ResultSet rs = miStatement.executeQuery(instruccionSql);
    		while (rs.next()){
    			datos.add(new Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
    		}
    		rs.close();
    		miConexion.close();
    	} catch (Exception e){
    		out.println("Ha habido un error");
    	}
    	
    	pageContext.setAttribute("losEmpleados", datos);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recorre base datos empleados</title>
<style>
.cabecera{
	font-weight:bold;
}
</style>
</head>
<body>
	<table border="1">
		<tr class="cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td><td>Bonus</td></tr>
	
	<c:forEach var="Empleados" items="${losEmpleados}">
		<tr>
			<td>${Empleados.nombre}</td><td>${Empleados.apellido}</td><td>${Empleados.puesto}</td><td>${Empleados.salario}</td>
			<td>
				<!-- <c:if test="${Empleados.salario<40000}">3000</c:if>
				<c:if test="${Empleados.salario>40000}">-----</c:if>
				-->
				<c:choose>
					<c:when test="${Empleados.salario<40000}">
						3000
					</c:when>
					<c:when test="${Empleados.salario>40000 && Empleados.salario<65000}">
						5000
					</c:when>
					<c:otherwise>
						-----
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</c:forEach>
	
	</table>
</body>
</html>