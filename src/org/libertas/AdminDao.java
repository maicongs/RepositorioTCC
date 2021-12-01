package org.libertas;
import java.sql.PreparedStatement;
import java.util.LinkedList;
import java.util.List;

public class AdminDao {
    public void submissao(Admin a) {
        	Conexao con = new Conexao();
            System.out.println("login");
            String login = a.getLogin();
            System.out.println("senha");
            String senha = a.getSenha();
            if(login.equals("") && senha.equals("")){
                System.out.printf("Usuário % logado com sucesso.", login);
            }else{
                System.out.println("Login ou senha inválidos!");
            }
        }
	
	public void consultar(Admin a) {
		
	}
	
	public void atualizar(Admin a) {
		
	}
	
	public List<Admin> listar(){
		List <Admin> dados = new LinkedList<Admin>();
		return dados;
	}
	
	public void armazenar(Admin a) {
	
	}
	

}
