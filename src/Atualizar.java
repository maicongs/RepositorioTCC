import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

	public String Atualizar(String nome, String email, String titulo AlunoBin AluBin){
		conexao bd = new conexao();
		String retorno = "erro";
		int res;
		
		try {
			Connection ExConn = bd.abrirBDConn();
			Statement stmt = ExConn.createStatement();
			res = stmt.executeUpdate("UPDATE mappingbabybd.bolsa SET nome = '"+nome+"', email = '"+email+"', titulo = '"+titulo+"' 'WHERE ref = " + AluBin.getNome()+"'");
			if(res==1) JOptionPane.showMessageDialog(null, "Atualizado com sucesso.");
			stmt.close();
			bd.fecharBDConn();
		}catch(Exception e){
			JOptionPane.showMessageDialog(null, "O produto não foi atualizado.");
        }return retorno; 
        
JButton btnAtualizar = new JButton("Salvar");
    	btnAtualizar.addActionListener(new ActionListener() {
    		public void actionPerformed(ActionEvent arg0) {
    			
    			AluBin.setNome(nome_text.getText());
    			AluBin.setEmail(email_text.getText());
    			AluBin.setTitulo(titulo_text.getText());
    			BancoControl.Atualizar(nome_text.getText(), email_text.getText(), titulo_text.getText());
    			
    		)}
}
