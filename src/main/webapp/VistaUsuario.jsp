<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
	
<body> <form  action="VerUsuario" method="get" >
		
		<label>ID</label>
		${usuario.id}
		<br>
		<label>Nombre</label>
		${usario.nombre}
		<br>
		<label>Password</label>
		${usuario.password}
		<br>
		<label>Login fecha</label>
		${usuario.login_fecha}
		<label>Id Rol</label>
		${usuario.idRol}
		</form>
		<form action="VerUsuarios">
			<input type="submit" value="Volver">
		</form>
	
</body>
</body>
</html>