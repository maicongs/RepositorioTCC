package org.libertas;
import java.sql.PreparedStatement;
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
	
	public void consultar(Aluno a) {
		
	}
	
	public void atualizar(Aluno a) {
		
	}
	
	public List<Aluno> listar(){
		List <Aluno> dados = new LinkedList<Aluno>();
		return dados;
	}
	
	public void armazenar(Aluno a) {
	
	}

}
