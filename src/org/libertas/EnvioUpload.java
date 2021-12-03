package org.libertas;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class EnviarArquivo
 */
@WebServlet("/EnvioUpload")
@MultipartConfig
public class EnvioUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String resposta;
		
		try {
			Part filePart = request.getPart("arquivo");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

			// define a pasta que será salvo o arquivo
			//String pasta = "/var/lib/tomcat9/webapps/arquivosGrupo2/";
			String pasta = "C:\\Users\\diqui\\Documents\\GitHub\\arquivosGrupo2\\";

			// verifica se o arquivo existe
			int i = 1;
			while (new File(pasta + fileName).exists()) {
				fileName = i + fileName;
				i++;
			}
			// salva o arquivo
			filePart.write(pasta + fileName);
			
			AlunoDao adao = new AlunoDao();
			Aluno a = new Aluno();
			
			a.setRa(Integer.parseInt(request.getParameter("ra")));
			a.setNome(request.getParameter("nome"));
			a.setEmail(request.getParameter("email"));
			a.setId_curso(Integer.parseInt(request.getParameter("id_curso")));
			
			Aluno a2 = adao.consultarAluno(a.getRa());
			if (a.getRa() == a2.getRa()) {
				adao.atualizarAluno(a);
			} else {
				adao.submissao(a);
			}
			
			
			TrabalhoDao tdao = new TrabalhoDao();
			Trabalho t = new Trabalho();
			
			t.setPalavra_chave1(request.getParameter("palavra_chave1"));
			t.setPalavra_chave2(request.getParameter("palavra_chave2"));
			t.setPalavra_chave3(request.getParameter("palavra_chave3"));
			t.setPalavra_chave4(request.getParameter("palavra_chave4"));
			t.setPalavra_chave5(request.getParameter("palavra_chave5"));
			t.setTitulo(request.getParameter("titulo"));
			t.setSituacao("P");
			t.setConfirmacao(request.getParameter("confirmacao"));
			t.setResumo(request.getParameter("resumo"));
			t.setId_curso(Integer.parseInt(request.getParameter("id_curso")));
			t.setId_professor(Integer.parseInt(request.getParameter("id_professor")));
			t.setRa_aluno(Integer.parseInt(request.getParameter("ra")));
			t.setArquivo(fileName);
			
			tdao.submissaoTrabalho(t);
			
			CursoDao cdao = new CursoDao();
			Curso c = new Curso();
			
			c.setId_curso(Integer.parseInt(request.getParameter("id_curso")));
			c.setCurso(request.getParameter("curso"));
			
			ProfessorDao pdao = new ProfessorDao();
			Professor p = new Professor();
			
			p.setId_professor(Integer.parseInt(request.getParameter("id_professor")));
			p.setNome_professor(request.getParameter("nome_professor"));
			
			
			
			resposta = "<html>"
					+ "<body>"
					+"<header>"			
					+"<nav class='navbar navbar-expand' style=\'background-color:#32CD32\'>"	
					+"<img src=\'logo.png\' width=\'200px\' height=\'100px\'>"
					+"<span class=\'display-3\'>Libertas Repositório de Trabalhos</span>"			
					+"</header>"				
					+"<body class=\'p-3 mb-2 text-black\' style=\'background-color:#90EE90\'>"
					+"<div class=\'alert\' style=\'background-color:#90EE90;margin:auto\'>"
					+"<div class=\'card-body\' style=\'text-align:center; margin-top:100px; background-color:#90EE90\' >"
					+"<p>Trabalho Enviado com sucesso</p>"															  				 	
					+ "</body>"
					+ "</html>";
					
		} catch (Exception e) {
			e.printStackTrace();
			resposta = "Falha ao enviar trabalho<br>" + e.getMessage();
		}
		
		
		try {
			PrintWriter out = response.getWriter();  
			out.print("<html><body>"+ resposta + "</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
