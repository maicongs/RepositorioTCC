package org.libertas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class AdminDao {
/*
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
	*/
	public void consultar(String email, String senha) {
		try {
			Conexao con = new Conexao();
			String sql = "SELECT * FROM admin WHERE email = '"+ email +"'" + "and senha = '" + senha + "'";
			Statement sta = con.getConexao().createStatement();
			
			ResultSet resultado = sta.executeQuery(sql);
			
			if (resultado.next()) {
				System.out.println("login efetuado com sucesso");
			}
			else {
				System.out.println("login ou senha inválido");
			}
			
			con.getConexao().close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
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
