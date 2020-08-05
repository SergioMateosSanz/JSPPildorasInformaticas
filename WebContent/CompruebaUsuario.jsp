<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
	<% 
		request.setCharacterEncoding("UTF-8");
		String usuario=request.getParameter("usuario");
		String contra=request.getParameter("contra");
		
		Class.forName("com.mysql.jdbc.Driver");
		try {
			Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?serverTimezone=UTC","root","password");
			PreparedStatement miStatement = miConexion.prepareStatement("SELECT * FROM usuarios WHERE Usuario=? AND Contrasena=?");
			miStatement.setString(1, usuario);
			miStatement.setString(2, contra);
			ResultSet miResultSet = miStatement.executeQuery();

			if (miResultSet.next()){
                out.println("Acceso correcto");
            } else {
            	out.println("Usuario o contraseña incorrectos");
            }
			
		} catch (Exception e) {
			out.println("Ha habido un error");
		}
	%>
</body>
</html>