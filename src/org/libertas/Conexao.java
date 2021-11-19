package org.libertas;
import java.sql.Connection;

public class Conexao {
	private Connection conexao;
	
	public Conexao() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		
			
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	

}
