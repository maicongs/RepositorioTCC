package org.libertas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class TrabalhoDao {
	
	// INSERINDO OS DADOS DO TRABALHO NO BANCO DE DADOS
	
    public void submissaoTrabalho(Trabalho t) {
		try {
			Conexao con = new Conexao();
			String sql = "INSERT INTO trabalho (titulo, resumo, palavra_chave1, palavra_chave2, palavra_chave3, "
					+ " palavra_chave4, palavra_chave5, situacao, confirmacao, id_professor, id_curso, ra_aluno)"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
    
    // FAZENDO A CONSULTA DOS DADOS DO TRABALHO
	
	public Trabalho consultarTrabalho(int id_trabalho) {
		Trabalho t = new Trabalho();
		try {
			Conexao con = new Conexao();
			String sql = "SELECT * FROM trabalho WHERE id_trabalho = " + id_trabalho;
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			if(resultado.next()) {
				t.setTitulo(resultado.getString("titulo"));
				t.setResumo(resultado.getString("resumo"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setPalavra_chave2(resultado.getString("palavra_chave2"));
				t.setPalavra_chave3(resultado.getString("palavra_chave3"));
				t.setPalavra_chave4(resultado.getString("palavra_chave4"));
				t.setPalavra_chave5(resultado.getString("palavra_chave5"));
				t.setSituacao(resultado.getString("situacao"));
				t.setConfirmacao(resultado.getString("confirmacao"));
				t.setId_professor(resultado.getInt("id_professor"));
				t.setId_curso(resultado.getInt("id_curso"));
				t.setRa_aluno(resultado.getInt("ra"));
			}
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}
	
	// ATUALIZAR OS DADOS QUE JA FORAM CADASTRADOS DO TARABALHO
	
	public void atualizarTrabalho(Trabalho t) {
		try {
			Conexao con = new Conexao();
			String sql = "UPDATE trabalho"
					+ " SET titulo = ?,"
					+ " resumo = ?,"
					+ " palavra_chave1 = ?,"
					+ " palavra_chave2 = ?,"
					+ " palavra_chave3 = ?,"
					+ " palavra_chave4 = ?,"
					+ " palavra_chave5 = ?,"
					+ " situacao = ?"
					+ " confirmacao = ?"
					+ " WHERE id_trabalho = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, t.getTitulo());
			prep.setString(2, t.getResumo());
			prep.setString(3, t.getPalavra_chave1());
			prep.setString(4, t.getPalavra_chave2());
			prep.setString(5, t.getPalavra_chave3());
			prep.setString(6, t.getPalavra_chave4());
			prep.setString(7, t.getPalavra_chave5());
			prep.setString(8, t.getSituacao());
			prep.setString(9, t.getConfirmacao());
			prep.execute();
			
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// A LISTA MOSTRANDO NA TELA OS DADOS DO TRABALHO
	
	public List<Trabalho> listarTrabalho(){
		List <Trabalho> dados = new LinkedList<Trabalho>();
		try {
			String sql = "SELECT * FROM trabalho ORDER BY id_trabalho DESC LIMIT 1";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			while(resultado.next()) {
				Trabalho t = new Trabalho();
				t.setId_trabalho(resultado.getInt("id_trabalho"));
				t.setTitulo(resultado.getString("titulo"));
				t.setResumo(resultado.getString("resumo"));
				dados.add(t);
			}
			
			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
	
	public void armazenar(Trabalho t) {
	
	}

}
