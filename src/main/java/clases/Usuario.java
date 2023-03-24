package clases;

import java.util.Date;

public class Usuario {

	private int id;
	private String nombre;
	private String password;
	private Date login_fecha;
	
	public Usuario() {
		
	}
	public Usuario(int id, String nombre, String password, Date login_fecha) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.login_fecha = login_fecha;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Date getLogin_fecha() {
		return login_fecha;
	}
	public void setLogin_fecha(Date login_fecha) {
		this.login_fecha = login_fecha;
	}
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", password=" + password + ", login_fecha=" + login_fecha
				+ "]";
	}
	
	
	
}

