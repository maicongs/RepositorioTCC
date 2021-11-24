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
			
			TrabalhoDao tdao = new TrabalhoDao();
			Trabalho t = new Trabalho();
			
			t.setPalavra_chave1(request.getParameter("palavra_chave1"));
			t.setPalavra_chave2(request.getParameter("palavra_chave2"));
			t.setPalavra_chave3(request.getParameter("palavra_chave3"));
			t.setPalavra_chave4(request.getParameter("palavra_chave4"));
			t.setPalavra_chave5(request.getParameter("palavra_chave5"));
			t.setConfirmacao(request.getParameter("confirmacao"));
			t.setTitulo(request.getParameter("titulo"));
			t.setSituacao(request.getParameter("situacao"));
			t.setResumo(request.getParameter("resumo"));
			t.setId_curso(Integer.parseInt(request.getParameter("curso")));
			t.setId_professor(Integer.parseInt(request.getParameter("id_professor")));
			t.setRa_aluno(Integer.parseInt(request.getParameter("ra_aluno")));
			
			tdao.submissao(t);
			
			
			
			
			resposta = "Arquivo enviado com sucesso";
		} catch (Exception e) {
			e.printStackTrace();
			resposta = "Falha ao enviar trabalho<br>" + e.getMessage();
		}
		
		
		try {
			PrintWriter out = response.getWriter();  
			out.print("<html><body>"+ resposta+ "</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
