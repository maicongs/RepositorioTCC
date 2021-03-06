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
					+ " palavra_chave4, palavra_chave5, situacao, confirmacao, id_professor, id_curso, ra_aluno, arquivo)"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
			trab.setString(13, t.getArquivo());
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
			if (resultado.next()) {
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
				t.setArquivo(resultado.getString("arquivo"));
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
			String sql = "UPDATE trabalho" + " SET titulo = ?," + " resumo = ?," + " palavra_chave1 = ?,"
					+ " palavra_chave2 = ?," + " palavra_chave3 = ?," + " palavra_chave4 = ?," + " palavra_chave5 = ?,"
					+ " situacao = ?" + " confirmacao = ?" + " arquivo = ?" + " WHERE id_trabalho = ?";
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
			prep.setString(10, t.getArquivo());
			prep.execute();

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void aceitarTrabalho(int id_trabalho) {
		try {
			Conexao con = new Conexao();
			String sql = "UPDATE trabalho" + " SET situacao = 'Aprovado' WHERE id_trabalho = " + id_trabalho;
			PreparedStatement prep = con.getConexao().prepareStatement(sql);

			prep.execute();

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void negarTrabalho(int id_trabalho) {
		try {
			Conexao con = new Conexao();
			String sql = "UPDATE trabalho" + " SET situacao = 'Negado' WHERE id_trabalho = " + id_trabalho;
			PreparedStatement prep = con.getConexao().prepareStatement(sql);

			prep.execute();

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// A LISTA MOSTRANDO NA TELA OS DADOS DO TRABALHO

	public List<Trabalho> listarTrabalho() {
		List<Trabalho> dados = new LinkedList<Trabalho>();
		try {
			String sql = "SELECT * FROM trabalho WHERE situacao = 'Aprovado' ORDER BY id_trabalho DESC LIMIT 3";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			while (resultado.next()) {
				Trabalho t = new Trabalho();
				t.setId_trabalho(resultado.getInt("id_trabalho"));
				t.setTitulo(resultado.getString("titulo"));
				t.setResumo(resultado.getString("resumo"));
				t.setId_curso(resultado.getInt("id_curso"));
				t.setId_professor(resultado.getInt("id_professor"));
				t.setRa_aluno(resultado.getInt("ra_aluno"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setPalavra_chave1(resultado.getString("palavra_chave2"));
				t.setPalavra_chave1(resultado.getString("palavra_chave3"));

				t.setArquivo(resultado.getString("arquivo"));

				dados.add(t);
			}

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
	
	public List<Trabalho> listarTodosTrabalhos() {
		List<Trabalho> dados = new LinkedList<Trabalho>();
		try {
			String sql = "SELECT * FROM trabalho ORDER BY titulo";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			while (resultado.next()) {
				Trabalho t = new Trabalho();
				t.setId_trabalho(resultado.getInt("id_trabalho"));
				t.setTitulo(resultado.getString("titulo"));
				t.setResumo(resultado.getString("resumo"));
				t.setId_curso(resultado.getInt("id_curso"));
				t.setId_professor(resultado.getInt("id_professor"));
				t.setRa_aluno(resultado.getInt("ra_aluno"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setPalavra_chave1(resultado.getString("palavra_chave2"));
				t.setPalavra_chave1(resultado.getString("palavra_chave3"));
				t.setSituacao(resultado.getString("situacao"));

				t.setArquivo(resultado.getString("arquivo"));

				dados.add(t);
			}

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}

	public List<Trabalho> listarTrabalhop() {
		List<Trabalho> dados = new LinkedList<Trabalho>();
		try {
			String sql = "SELECT * FROM trabalho WHERE situacao = 'Pendente'";
			Conexao con = new Conexao();
			Statement sta = con.getConexao().createStatement();
			ResultSet resultado = sta.executeQuery(sql);
			while (resultado.next()) {
				Trabalho t = new Trabalho();
				t.setId_trabalho(resultado.getInt("id_trabalho"));
				t.setTitulo(resultado.getString("titulo"));
				t.setResumo(resultado.getString("resumo"));
				t.setId_curso(resultado.getInt("id_curso"));
				t.setId_professor(resultado.getInt("id_professor"));
				t.setRa_aluno(resultado.getInt("ra_aluno"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setPalavra_chave1(resultado.getString("palavra_chave2"));
				t.setPalavra_chave1(resultado.getString("palavra_chave3"));

				t.setArquivo(resultado.getString("arquivo"));

				dados.add(t);
			}

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}

	public List<Pesquisar> pesquisarTrabalho(String pesquisa) {
		List<Pesquisar> dados = new LinkedList<Pesquisar>();
		try {
			Conexao con = new Conexao();
			String sql = "SELECT * FROM trabalho t " + " INNER JOIN aluno a ON t.ra_aluno = a.ra "
					+ " INNER JOIN professor p ON t.id_professor = p.id_professor "
					+ " INNER JOIN cursos c ON t.id_curso = c.id_curso "
					+ " WHERE (t.titulo LIKE ? OR p.nome_professor LIKE ? "
					+ " OR c.curso LIKE ? OR t.resumo LIKE ? OR t.palavra_chave1 LIKE ? "
					+ " OR t.palavra_chave2 LIKE ? OR t.palavra_chave3 LIKE ? OR a.nome LIKE ?) "
					+ " and t.situacao = 'Aprovado'"
					+ " ORDER BY id_trabalho DESC LIMIT 3";
			
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, "%" + pesquisa + "%");
			prep.setString(2, "%" + pesquisa  + "%");
			prep.setString(3, "%" + pesquisa  + "%");
			prep.setString(4, "%" + pesquisa  + "%");
			prep.setString(5, "%" + pesquisa  + "%");
			prep.setString(6, "%" + pesquisa  + "%");
			prep.setString(7, "%" + pesquisa  + "%");
			prep.setString(8, "%" + pesquisa  + "%");
			
			
			ResultSet resultado = prep.executeQuery();
			while(resultado.next()) {
				Pesquisar t = new Pesquisar();
				t.setTitulo(resultado.getString("titulo"));
				t.setNome_professor(resultado.getString("nome_professor"));
				t.setCurso(resultado.getString("curso"));
				t.setResumo(resultado.getString("resumo"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setPalavra_chave1(resultado.getString("palavra_chave1"));
				t.setArquivo(resultado.getString("arquivo"));
				t.setSituacao(resultado.getString("situacao"));
				t.setConfirmacao(resultado.getString("confirmacao"));
				t.setNome(resultado.getString("nome"));
				
				dados.add(t);
				
			}
			

			con.getConexao().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
}
