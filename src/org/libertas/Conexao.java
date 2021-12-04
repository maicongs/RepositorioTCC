package org.libertas;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	private Connection conexao;

	public Conexao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			conexao = DriverManager
					.getConnection("jdbc:mysql://remotemysql.com/2EyRmeqEIM?" + "user=2EyRmeqEIM&password=BX0FuGP29S");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Connection getConexao() {
		return conexao;
	}

	public void setConexao(Connection conexao) {
		this.conexao = conexao;
	}

}


