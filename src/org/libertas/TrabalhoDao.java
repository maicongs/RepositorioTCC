package org.libertas;
import java.sql.PreparedStatement;
import java.util.LinkedList;
import java.util.List;

public class TrabalhoDao {
    public void submissao(Trabalho t) {
		try {
			Conexao con = new Conexao();
			String sql = "INSERT INTO trabalho (titulo, resumo, palavra_chave1, palavra_chave2, palavra_chave3, "
					+ " palavra_chave4, palavra_chave5, situacao, confirmacao, id_professor, id_curso, ra_aluno"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?))";
			PreparedStatement trab = con.getConexao().prepareStatement(sql);
			trab.setString(1, t.getTitulo());
			trab.setString(2, t.getResumo());
			trab.setString(3, t.getPalavra_chave1());
			trab.setString(4, t.getPalavra_chave2());
			trab.setString(5, t.getPalavra_chave3());
			trab.setString(6, t.getPalavra_chave4());
			trab.setString(7, t.getPalavra_chave5());
			trab.setString(8, t.getSituacao());
			trab.setString(9, t.getConfirmacao());
			trab.setInt(10, t.getId_professor());
			trab.setInt(11, t.getId_curso());
			trab.setInt(12, t.getRa_aluno());
			trab.execute();
			
			con.getConexao().close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void consultar(Trabalho t) {
		
	}
	
	public void atualizar(Trabalho t) {
		
	}
	
	public List<Trabalho> listar(){
		List <Trabalho> dados = new LinkedList<Trabalho>();
		return dados;
	}
	
	public void armazenar(Trabalho t) {
	
	}

}
