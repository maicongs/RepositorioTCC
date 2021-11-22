import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

public class Consultar {
	try {
		Class.forName(driv);
		System.out.println( "Driver carregado" );
	} catch ( ClassNotFoundException cnfe ) {
		System.out.println( "Driver não encontrado : " +
						   cnfe.getMessage() );
	}

	try {
		con = DriverManager.getConnection(url, usuario, senha);
		System.out.println( "Conexão com o banco de dados estabelecida." );
	} catch ( SQLException sqle ) {
		System.out.println( "Erro na conexão ao Bando de Dados : " +
						            sqle.getMessage() );
	}
	
      try{

   
String sql = " SELECT *  FROM oreidelas order by nome ASC" ;
PrepareStatement ps = con.prepareStatement(sql);
    
ResultSet rs = ps.executeQuery();

int contador =0;
int i=0;
String nomealuno ="";
String email = "";
String nomeorientador="";
String nomecurso= "";
String titulo= "";
String palavraschave= "";
String resumo= "";
String enviararquivo= "";
while (rs.next()) {
	nomealuno = rs.getString("codigo");
	email = rs.getString("marca");
    nomeorientador = rs.getString("nome");
    nomecurso = rs.getString("nome");
    titulo = rs.getString("titulo");
    palavraschave = rs.getString("palavras");
    resumo = rs.getString("resumo");
    enviararquivo = rs.getString("enviar");
	Text.insert(""+nomealuno + "   " +email + "   " +nomeorientador + "   " +nomecurso + "   " +titulo +" "+palavraschave +"  "+resumo +" "+enviararquivo +" \n",i);
	i++;
	System.out.println(""+nomealuno + "   " +email + "   " +nomeorientador + "   " +nomecurso + "   " +titulo +" "+palavraschave +"  "+resumo +" "+enviararquivo);
}                                            

} catch ( SQLException sql ) {
		System.out.println( "Erro na conexão ao Bando de Dados : " +
						            sqle.getMessage() );
	}	



	try {
		con.close();
		JOptionPane.showMessageDialog(null, "Consulta Realizada com Sucesso");
		
		
	} catch ( SQLException sql ) {
		System.out.println( "Erro no fechamento da conexão : " );
            }[/code]

}
