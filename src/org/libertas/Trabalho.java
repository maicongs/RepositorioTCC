package org.libertas;

public class Trabalho {
	private int id_trabalho;
	private String titulo;
	private String resumo;
	private String palavra_chave1;
	private String palavra_chave2;
	private String palavra_chave3;
	private String palavra_chave4;
	private String palavra_chave5;
	private String situacao;
	private String confirmacao;
	private int id_professor;
	private int id_curso;
	private int ra_aluno;
	private String arquivo;
	
	
	public String getArquivo() {
		return arquivo;
	}
	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}
	public void setId_trabalho(int id_trabalho) {
		this.id_trabalho = id_trabalho;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getResumo() {
		return resumo;
	}
	public void setResumo(String resumo) {
		this.resumo = resumo;
	}
		
	public String getPalavra_chave1() {
		return palavra_chave1;
	}
	public void setPalavra_chave1(String palavra_chave1) {
		this.palavra_chave1 = palavra_chave1;
	}
	public String getPalavra_chave2() {
		return palavra_chave2;
	}
	public void setPalavra_chave2(String palavra_chave2) {
		this.palavra_chave2 = palavra_chave2;
	}
	public String getPalavra_chave3() {
		return palavra_chave3;
	}
	public void setPalavra_chave3(String palavra_chave3) {
		this.palavra_chave3 = palavra_chave3;
	}
	public String getPalavra_chave4() {
		return palavra_chave4;
	}
	public void setPalavra_chave4(String palavra_chave4) {
		this.palavra_chave4 = palavra_chave4;
	}
	public String getPalavra_chave5() {
		return palavra_chave5;
	}
	public void setPalavra_chave5(String palavra_chave5) {
		this.palavra_chave5 = palavra_chave5;
	}
	
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	public String getConfirmacao() {
		return confirmacao;
	}
	public void setConfirmacao(String confirmacao) {
		this.confirmacao = confirmacao;
	}
	public int getId_professor() {
		return id_professor;
	}
	public void setId_professor(int id_professor) {
		this.id_professor = id_professor;
	}
	public int getId_curso() {
		return id_curso;
	}
	public void setId_curso(int id_curso) {
		this.id_curso = id_curso;
	}
	public int getRa_aluno() {
		return ra_aluno;
	}
	public void setRa_aluno(int ra_aluno) {
		this.ra_aluno = ra_aluno;
	}
	
	
}
