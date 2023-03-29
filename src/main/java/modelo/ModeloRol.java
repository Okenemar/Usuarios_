package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conector.Conector;
import clases.Rol;
public class ModeloRol extends Conector{
	
	public ArrayList<Rol> Roles() {
		String sql = "SELECT * FROM roles";
		Statement st;

		ArrayList<Rol> roles = new ArrayList<Rol>();
		try {
			st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			Rol rol;
			while (rs.next()) {
				rol = new Rol();
				rol.setId(rs.getInt("id"));
				rol.setNombre(rs.getString("nombre"));
				
				roles.add(rol);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return roles;
	}

}
