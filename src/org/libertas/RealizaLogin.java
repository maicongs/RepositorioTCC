package org.libertas;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RealizaLogin")
public class RealizaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RealizaLogin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		PrintWriter out = response.getWriter();
		AdminDao admdao = new AdminDao();
		Admin admin = admdao.login(email);
		
		if (email == null) {
			out.print("<script>alert('Usuário/Senha inválido(s).');location.href='login.jsp';</script>");
		} else {
			if (admin.getSenha().equals(senha)) {
				response.sendRedirect("indexAdmin.jsp");
			} else {
				out.print("<script>alert('Usuário/Senha inválido(s).');location.href='login.jsp';</script>");
			}
		}
	}

}