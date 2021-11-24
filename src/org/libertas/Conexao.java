package org.libertas;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	private Connection conexao;

		public Conexao() {
			try {
				Class.forName("org.mariadb.jdbc.Driver").newInstance();
				String url = "jdbc:mariadb://192.168.1.178:30003/reidelas";
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

