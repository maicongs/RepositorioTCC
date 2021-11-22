import java.util.LinkedList;
import java.util.List;

public class Imprimir {
    public void imprimir( String algo ){
		
		System.out.println( algo );
	}
	

	public void imprimirNomeAluno( String nome ){
		
		imprimir(nome);
	}
	
	public void imprimirEmail( String email){
			
		imprimir(email);
	}
	
	public void imprimirNomeOrientador( String nome){
		
		imprimir(nome);
	}
	
	public void imprimirNomeCurso(String nome) {
		
		imprimir(nome);
	}
	
	public void imprimirTitulo( String titulo){
			
		imprimir(titulo);
	}
	
	public void imprimirPalavrasChave( String palavras){
			
		imprimir(palavras);
	}
	
	public void imprimirResumo( String resumo){
		imprimir(resumo);
	}
	
	public void imprimirEnviarArquivo ( String enviar){
		imprimir(enviar);
	}
	
	public static void main(String[] args) {
		
		Imprimir e = new Imprimir();
		
		e.imprimir( "Imprimindo...");
		
		e.imprimirNomeAluno("Nome...");
		
		e.imprimirEmail("Email...");
		
		e.imprimirNomeOrientador("Nome ...");
		
		e.imprimirNomeCurso("Curso...");
		
		e.imprimirTitulo("Titulo...");
		
		e.imprimirPalavrasChave("Palavras-Chave...");
		
		e.imprimirResumo("Resumo...");
		
		e.imprimirEnviarArquivo("Enviar arquivo...");
		
	}

}
