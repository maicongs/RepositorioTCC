package teste;

import org.libertas.Professor;
import org.libertas.ProfessorDao;

public class MainTeste {
public static void main(String[] args) {
	ProfessorDao pdao = new ProfessorDao();
	for (Professor p: pdao.listar()){
		System.out.println(p.getNome_professor());
	}
}
}
