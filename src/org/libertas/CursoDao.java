package org.libertas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


public class CursoDao {

	
	public Curso consultarCurso(int id_curso) {
			Curso c = new Curso();
			try {
				Conexao con = new Conexao();
				String sql = "SELECT * FROM curso WHERE id_curso = " + id_curso;
				Statement sta = con.getConexao().createStatement();
				ResultSet res = sta.executeQuery(sql);
				if(res.next()) {
					c.setId_curso(res.getInt("id_curso"));
					c.setCurso(res.getString("curso"));
				}
				
				con.getConexao().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return c;
		
	}
	
	public void atualizarCurso(Curso c) {
		try {
			Conexao con = new Conexao();
			String sql = "UPDATE curso"
					+ " SET id_curso = ?,"
					+ "curso = ?,"
					+ "WHERE idcurso = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setInt(1, c.getId_curso());
			prep.setString(2, c.getCurso());
			prep.execute();
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Curso> listar(){
		List <Curso> dados = new LinkedList<Curso>();
		try {
			String sql = "SELECT * FROM cursos "
					+ "ORDER BY id_curso";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while(res.next()) {
				Curso c = new Curso();
				c.setCurso(res.getString("curso"));
				c.setId_curso(res.getInt("id_curso"));
				dados.add(c);
			}
			con.getConexao().close();
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
	
	public void armazenar(Curso c) {
	
	}

}
