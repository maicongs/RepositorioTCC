package org.libertas;

public class Aluno {
	private String nome;
	private String email;
	private String id_curso;
	private String ra;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCurso() {
		return id_curso;
	}
	public void setCurso(String curso) {
		this.id_curso = curso;
	}
		
	public void getRA(String ra) {
		this.ra = ra;
	}
	public void setRA(String ra) {
		this.ra = ra;
	}

}
