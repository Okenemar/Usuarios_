 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
	
	
	<nav>
		<a href="InsertarUsuario">InsertarUsuario</a>
		<br><br><br>
	</nav>
	<table class="table">
  <thead>
    <tr>
	  <th scope="col"></th>
	  <th scope="col">id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Password</th>
      <th scope="col">Login fecha</th>
      <th scope="col">id Rol</th>
      <th scope="col"></th>
      
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${usuarios}" var="usuario">
    <tr>
      <th scope="row"></th>
      <td>${usuario.id}</td>
      <td>${usuario.nombre}</td>
      <td>${usuario.password}</td>
      <td>${usuario.login_fecha}</td>
      <td>${usuario.rol.id}</td>
      <td><a href="EliminarUsuario?id=${usuario.id}">eliminar</a></td>
      <td><a href="FormularioModificarUsuario?id=${usuario.id}">modificar</a></td>
      <td><a href="VerUsuario?id=${usuario.id}">ver usuario</a>
      
    </tr>
 </c:forEach>
  </tbody>
</table>
	
	
</body>
</html>