package org.libertas;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	private Connection conexao;

		public Conexao() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
				String url = "jdbc:mariadb://192.168.1.178:30003/reidelas"; // USAR ESSE LOCAL
				//String url = "jdbc:mariadb://186.248.131.178:30003/ratofumante"; // USAR ESSE FORA DA FACUL
				//String url = "jdbc:mariadb://remotemysql.com:3306/2EyRmeqEIM";
				conexao = DriverManager.getConnection(url, "grupo2", "AsBolasSaoQuadradas.2");

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

