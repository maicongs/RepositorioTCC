package org.libertas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProfessorDao {
    public void submissao(Professor p) {
        	try {
    			Conexao con = new Conexao();
    			String sql = "INSERT INTO professor (id_professor, nome_professor"
    					+ " VALUES (?, ?,))";
    			PreparedStatement professor = con.getConexao().prepareStatement(sql);
    			professor.setInt(1, p.getId_professor());
    			professor.setString(2, p.getNome_professor());
    			professor.execute();
    			
    			con.getConexao().close();
    			
    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    		
    	}
	
	public Professor consultar(int id_professor) {
			Professor p = new Professor();
			try {
				Conexao con = new Conexao();
				String sql = "SELECT * FROM professor WHERE idprofessor = " + id_professor;
				Statement sta = con.getConexao().createStatement();
				ResultSet res = sta.executeQuery(sql);
				if(res.next()) {
					p.setId_professor(res.getInt("id_professor"));
					p.setNome_professor(res.getString("nome_professor"));
				}
				
				con.getConexao().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return p;
		}
	
	public void atualizarProfessor(Professor p) {
		try {
			Conexao con = new Conexao();
			String sql = "UPDATE professor"
					+ " SET id_professor = ?,"
					+ "nome_professor = ?,"
					+ "WHERE idprofessor = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setInt(1, p.getId_professor());
			prep.setString(2, p.getNome_professor());
			prep.execute();
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
			
	
	public List<Professor> listar(){
		List <Professor> dados = new LinkedList<Professor>();
		try {
			String sql = "SELECT * FROM listar professor "
					+ "ORDER BY id_trabalho DESC LIMIT 1";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while(res.next()) {
				Professor p = new Professor();
				p.setNome_professor(res.getString("nome_professor"));
				dados.add(p);
			}
			con.getConexao().close();
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
	
	public void armazenar(Professor p) {
	
	}

}
