package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

import clases.Usuario;
import conector.Conector;

public class ModeloUsuario extends Conector{
	
	PreparedStatement prt;

		public void insertarUsuario(Usuario usuario) {
			try {
				prt = con.prepareStatement("INSERT INTO usuarios (nombre, password, login_fecha) VALUES(?,?,?)");
				
				prt.setString(1, usuario.getNombre());
				prt.setString(2, usuario.getPassword());
				prt.setDate(3, new Date(usuario.getLogin_fecha().getTime()));
				prt.execute();
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		public ArrayList<Usuario> getUsuarios(){
			PreparedStatement prt;
			ArrayList <Usuario> usuarios = new ArrayList <>();
			Usuario usuario = new Usuario();
			try {
				prt = con.prepareStatement("SELECT * FROM usuarios ");
				ResultSet resultado = prt.executeQuery();
				
				
				
				while(resultado.next()) {
					usuario = new Usuario();
					usuario.setId(resultado.getInt(1));
					usuario.setNombre(resultado.getString(2));
					usuario.setPassword(resultado.getString(3));
					usuario.setLogin_fecha(resultado.getDate(4));
					usuarios.add(usuario);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return usuarios;
			}
		public Usuario getUsuario(int id) throws SQLException  {
			Usuario usuario = new Usuario();
		
				prt=getCon().prepareStatement("SELECT * FROM usuarios WHERE id=?");
				prt.setInt(1, id);
				
				ResultSet resultado = prt.executeQuery();
				resultado.next();
				usuario.setId(resultado.getInt("id"));
				usuario.setNombre(resultado.getString("nombre"));
				usuario.setPassword(resultado.getString("password"));
				usuario.setLogin_fecha(resultado.getDate("login_fecha"));
				return usuario;
				
		}
		
		
		public void eliminarUsuario(int id) {
			try {
				prt = con.prepareStatement("DELETE FROM usuarios WHERE id = ?");
				
				prt.setInt(1, id);

				prt.execute();
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		public void modificarUsuario(Usuario usuario) {
			try {
				PreparedStatement preparedSt = con.prepareStatement("UPDATE usuarios SET nombre=?,password=?,login_fecha=? WHERE id=?");
				
				
				preparedSt.setString(1, usuario.getNombre());
				preparedSt.setString(2, usuario.getPassword());
				preparedSt.setDate(3, new Date(usuario.getLogin_fecha().getTime()));
				preparedSt.setInt(4, usuario.getId());
				
				
				preparedSt.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
	}


