package org.libertas;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RealizaLogin extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String resposta;
			
			AdminDao admindao = new AdminDao();
			Admin admin = new Admin();
			

			admin.setEmail(request.getParameter("email"));
			admin.setSenha(request.getParameter("senha"));
			
		}

}
