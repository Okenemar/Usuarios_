package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import clases.Rol;
import clases.Usuario;
import modelo.ModeloUsuario;

/**
 * Servlet implementation class ModificarUsuario
 */
@WebServlet("/ModificarUsuario")
public class ModificarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int idRol = Integer.parseInt(request.getParameter("rol"));
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		
	
		SimpleDateFormat login_fecha = new SimpleDateFormat("yyyy-MM-dd");
		ModeloUsuario modeloUsuario = new ModeloUsuario();
		Usuario usuario = new Usuario();
		usuario.setId(id);
		usuario.setNombre(nombre);
		usuario.setPassword(password);
		
		
		try {
			usuario.setLogin_fecha(login_fecha.parse(request.getParameter("login_fecha")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Rol rol = new Rol();
		rol.setId(idRol);
		usuario.setRol(rol);
		
			modeloUsuario.conectar();
			modeloUsuario.modificarUsuario(usuario);
			modeloUsuario.cerrar();
		
				
		response.sendRedirect("VerUsuarios");
	}


	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
