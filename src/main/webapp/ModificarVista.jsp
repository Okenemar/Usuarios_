<%@ page import="clases.Usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% Usuario usuario= (Usuario) request.getAttribute("Usuario");
		
	%>
<body> <form  action="ModificarUsuario">
		<label>ID</label> 
		<input type="hidden" name="id" placeholder="id" value="<%= usuario.getId() %>"> <%= usuario.getId() %>
		<br>
		<label>Nombre</label>
		<input type="text"  name="nombre" placeholder="nombre" value="<%= usuario.getNombre() %>">
		<label>Password</label>
		<input type="text" name="password" placeholder="password" value="<%= usuario.getPassword() %>">
		<label>Login fecha</label>
		<input type="date" name="login_fecha" placeholder="login_fecha" value="<%= usuario.getLogin_fecha() %>">
		<input type="submit" value="Modificar">
		</form>
		<form action="VerUsuarios">
			<input type="submit" value="Volver">
		</form>
	
</body>
</body>
</html>