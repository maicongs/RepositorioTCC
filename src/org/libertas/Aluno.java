package org.libertas;

public class Aluno {
	private String nome;
	private String email;
	private int id_curso;
	private int ra;

	
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

	public int getId_curso() {
		return id_curso;
	}
	public void setId_curso(int id_curso) {
		this.id_curso = id_curso;
	}

	public int getRa() {
		return ra;
	}
	public void setRa(int ra) {
		this.ra = ra;
	}
}
