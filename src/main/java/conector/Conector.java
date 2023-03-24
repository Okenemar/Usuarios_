package conector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conector {
	private static final String HOST = "localhost";
	private static final String BBDD = "usuarios";
	private static final String USERNAME_STRING = "root";
	private static final String PASSWORD_STRING = "";
	
	protected Connection con;
	
	public void conectar() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");//cargar driver
			con = (Connection) DriverManager.getConnection("jdbc:mysql://"+HOST+"/" + BBDD, USERNAME_STRING, PASSWORD_STRING );//abrir conexion			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void cerrar()  {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getCon() {
		return con;
	}

	public void setCon(Connection conexion) {
		this.con = conexion;
	
	}
	
}