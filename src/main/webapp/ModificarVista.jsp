<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
<body> <form  action="ModificarUsuario">
		<label>ID</label> 
		<input type="hidden" name="id" placeholder="id" value="${usuario.id}">${usuario.id}
		<br>
		<label>Nombre</label>
		<input type="text"  name="nombre" placeholder="nombre" value="${usuario.nombre}">
		<label>Password</label>
		<input type="text" name="password" placeholder="password" value="${usuario.password}">
		<label>Login fecha</label>
		<input type="date" name="login_fecha" placeholder="login_fecha" value="${usuario.login_fecha}">
		<label>Rol</label>
		<select name="rol">
		<c:forEach items="${roles}" var="rol">
                <option value="${rol.id}">${rol.nombre}</option>
            </c:forEach>
            </select>
            <br>
		<input type="submit" value="Modificar">
		</form>
		<form action="VerUsuarios">
			<input type="submit" value="Volver">
		</form>
	
</body>
</body>
</html>