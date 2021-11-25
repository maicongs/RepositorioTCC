package org.libertas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class AlunoDao {
    public void submissao(Aluno a) {
    	try {
			Conexao con = new Conexao();
			String sql = "INSERT INTO aluno (nome, email, id_curso, ra,"
					+ " VALUES (?, ?, ?, ?,))";
			PreparedStatement aluno = con.getConexao().prepareStatement(sql);
			aluno.setString(1, a.getNome());
			aluno.setString(2, a.getEmail());
			aluno.setInt(3, a.getId_curso());
			aluno.setInt(4, a.getRa());
			aluno.execute();
			
			con.getConexao().close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public Aluno consultarAluno(int ra_aluno) {
		Aluno a = new Aluno();
		try {
			Conexao con = new Conexao();
			String sql = "SELECT * FROM aluno WHERE id_aluno = " + ra_aluno;
			
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			if(resultado.next()) {
				a.setNome(resultado.getString("nome"));
				a.setEmail(resultado.getString("email"));
				a.setId_curso(resultado.getInt("id_curso"));
			}
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public void atualizarAluno(Aluno a) {
		try {
			Conexao con = new Conexao();
			String sql = "UPDATE aluno"
					+ " SET nome = ?"
					+ " WHERE id_aluno = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, a.getNome());
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Aluno> listarAluno(){
		List <Aluno> dados = new LinkedList<Aluno>();
		try {
			String sql = "SELECT * FROM aluno ORDER BY ra_aluno DESC LIMIT 1";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			while(resultado.next()) {
				Aluno a = new Aluno();
				a.setNome(resultado.getString("nome"));
			}
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
	
	public void armazenar(Aluno a) {
	
	}

}
