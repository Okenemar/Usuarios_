<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertar Usuario</title>
</head>
<body>
		<form method="POST" action="">
			<input type="text"  name="nombre" placeholder="nombre">
			<input type="text" name="password" placeholder="password">
			<input type="date" name="login_fecha" placeholder="login_fecha">
			<input type="submit" value="Crear">
		</form>
		<br>
		<form action="VerUsuarios">
			<input type="submit" value="Volver">
		</form>
</body>
</html>