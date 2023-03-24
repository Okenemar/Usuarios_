<%@ page import="modelo.ModeloUsuario" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="clases.Usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
	
	<% ArrayList<Usuario> usuarios = (ArrayList<Usuario>) request.getAttribute("usuarios");
	
	%>
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
      <th scope="col"></th>
      
      
    </tr>
  </thead>
  <tbody>
  <% for(Usuario usuario : usuarios) {%>
    <tr>
      <th scope="row"></th>
      <td><% out.println(usuario.getId());%></td>
      <td><% out.println(usuario.getNombre()); %></td>
      <td><% out.println(usuario.getPassword()); %></td>
      <td><% out.println(usuario.getLogin_fecha()); %></td>
      <td><a href=EliminarUsuario?id=<% out.println(usuario.getId()); %>>eliminar</a></td>
      <td><a href=FormularioModificarUsuario?id=<% out.println(usuario.getId()); %>>modificar</a></td>
      <td><a href=VerUsuario?id=<% out.println(usuario.getId()); %>>ver usuario</a>
      
    </tr>
   <% } %>
  </tbody>
</table>
	
	
</body>
</html>