<%@ page import="clases.Usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<% Usuario usuario= (Usuario) request.getAttribute("usuario");
		
	%>
<body> <form  action="VerUsuario" method="get" >
		
		<label>ID</label>
		<%= usuario.getId() %>
		<br>
		<label>Nombre</label>
		<%= usuario.getNombre() %>
		<br>
		<label>Password</label>
		<%= usuario.getPassword() %>
		<br>
		<label>Login fecha</label>
		<%= usuario.getLogin_fecha() %>
		</form>
		<form action="VerUsuarios">
			<input type="submit" value="Volver">
		</form>
	
</body>
</body>
</html>