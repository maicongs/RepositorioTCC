package org.libertas;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


public class UsuarioDao {

		public void inserir(Usuario u) {
			try {
				Conexao con = new Conexao();
				String sql = "INSERT INTO usuario (codigo, login, senha)"
						+ "VALUES (?,?,?,)";
				PreparedStatement prep = con.getConexao().prepareStatement(sql);
				prep.setInt(1, u.getCodigo());
				prep.setString(2, u.getLogin());
				prep.setString(3, u.getSenha());
				prep.execute();
				con.getConexao().close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public void alterar(Usuario u) {
			try {
				Conexao con = new Conexao();
				String sql = "UPDATE usuario"
						+ "codigo = ?,"
						+ "login = ?,"
						+ "senha = ?,"
						+ "WHERE idusuario = ?";
				PreparedStatement prep = con.getConexao().prepareStatement(sql);
				prep.setInt(1, u.getCodigo());
				prep.setString(2, u.getLogin());
				prep.setString(3, u.getSenha());
				prep.execute();
				
				con.getConexao().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public Usuario consultar(int idusuario) {
			Usuario u = new Usuario();
			try {
				Conexao con = new Conexao();
				String sql = "SELECT * FROM produto WHERE idusuario = " + idusuario;
				Statement sta = con.getConexao().createStatement();
				ResultSet res = sta.executeQuery(sql);
				while(res.next()) {
					u.setCodigo(res.getInt("codigo"));
					u.setLogin(res.getString("login"));
					u.setSenha(res.getString("senha"));
				}
				
				con.getConexao().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			return u;
		}
		
		public void excluir(Usuario u) {
			try {
				Conexao con = new Conexao();
				String sql = "DELETE FROM usuario"
						+ " WHERE idusuario = " + u.getIdusuario();
				Statement inst = con.getConexao().createStatement();
				inst.execute(sql);
				con.getConexao().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public List<Usuario> listar() {
			List<Usuario> dados = new LinkedList<Usuario>();
			try {
				String sql = "SELECT * FROM usuario "
						+ "ORDER BY usuario";
				Conexao con = new Conexao();
				Statement sta = con.getConexao().createStatement();
				ResultSet res = sta.executeQuery(sql);
				while(res.next()) {
					Usuario u = new Usuario();
					u.setCodigo(res.getInt("codigo"));
					u.setLogin(res.getString("login"));
					u.setSenha(res.getString("senha"));
					dados.add(u);
				}
				con.getConexao().close();
						
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dados;
		}
		public void salvar(Usuario u) {
			if(u.getCodigo() > 0) {
				alterar(u);
			}else {
				inserir(u);
			}
		}
}
