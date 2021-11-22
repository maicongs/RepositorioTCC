package org.libertas;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

public class Inserir {
	private int Nome;
	private String Email;

	public void Inserir (String nome , String email)
	{
		nome = nome;
		email = email;
	}
	                       	
	
	public static void main (String args[])
	{
		
		int nome;
	 	String email = null;
		
		Inserir progInserir = new Inserir();
		
		while (cont != "100")
		{
			
			String Opcs = JOptionPane.showInputDialog(null,"Escolha o que você deseja fazer:\n \n 1- Cadastrar \n" +
					" 2- Excluir \n ","Opcoes",JOptionPane.YES_NO_CANCEL_OPTION);
		    int a = Integer.parseInt(Opcs);
		    
		    if (a == 1)
		    {
		    	String Nome = JOptionPane.showInputDialog(null,"Digite o " +
						"Nome:","Cadastro",JOptionPane.QUESTION_MESSAGE);
		    	nmProf = NomeProf;
		    	
		    	String Email = JOptionPane.showInputDialog(null,"Digite o " +
		    			"Email:","Cadastro",JOptionPane.QUESTION_MESSAGE);
		    	int code = Integer.parseInt(Nome);
		    	nome = code;
		    	
		    	JOptionPane.showMessageDialog(null,"O Cadastro foi concluido com sucesso!");
		    	
		    }
		    
		    else if (a == 2)
		    {
	                               

		    }
		    
			String Sair = JOptionPane.showInputDialog(null,"Deseja Continuar:\n[1] SIM\n[2] NAO \n","Deseja Continuar",JOptionPane.PLAIN_MESSAGE);
	        double saida = Integer.parseInt(Sair);
	        if (saida == 2) 
	        {
	        	cont = "100";
	        }

}
