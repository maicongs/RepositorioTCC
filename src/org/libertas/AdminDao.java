package org.libertas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class AdminDao {
	
	public Admin login(String email) {
		Admin admin = null;
		try {
			Conexao con = new Conexao();
			String sql = "SELECT * FROM admin WHERE email=?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, email);
			ResultSet resultado = prep.executeQuery();
			
			if(resultado.next()) {
				admin = new Admin();
				admin.setEmail(resultado.getString("email"));
				admin.setSenha(resultado.getString("senha"));
			}
			
			resultado.close();
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
}
