
<%@page import="org.libertas.Admin"%>
<%@page import="org.libertas.AdminDao"%>
<%@page import="org.libertas.RealizaLogin"%>

<%@page import="org.libertas.ProfessorDao"%>
<%@page import="org.libertas.Professor"%>
<%@page import="org.libertas.Aluno"%>
<%@page import="org.libertas.AlunoDao"%>
<%@page import="org.libertas.Trabalho"%>
<%@page import="org.libertas.TrabalhoDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Página Inicial</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/all.min.css" />
</head>

<body class="p-3 mb-2 text-black" style="background-color:#90EE90">
<%

    AdminDao admindao = new AdminDao();
	Admin admin = new Admin();
	

	admin.setEmail(request.getParameter("email"));
	admin.setSenha(request.getParameter("senha"));

%>
	 <div class="container">  
		<nav class="navbar navbar-expand-md navbar-light fixed-top" style="background-color:#32CD32">
			<img src="logo.png" width="250px" height="150px">
			<span class="display-4"><strong>Libertas Repositório de Trabalhos</strong></span>
			 <ul class="navbar-nav mr-auto">
	          	 <li class="nav-item">
	            	<a class="nav-link" style="padding-left:50px; font-size: 25px; font-weight: bold; color: white" href="Form.jsp">Submissão</a>
	             </li>
	          	<li class="nav-item">
	            	<a class="nav-link" style="padding-right: 30px; font-size: 25px; font-weight: bold; color: white" href="AprovacaoTrabalho.jsp">Entrar</a>
	          	</li>
          	 </ul>
         </nav>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<form class="form-inline">
		<input class="form-control mr-sm-2" type="search"
			placeholder="Buscar..." aria-label="Pesquisar"
			style="width: 600px; position: relative; left: 50%; margin-left: -300px">
		<button class="btn btn-outline-primary my-2 my-sm-0" type="submit"
			style="position: absolute; left: 630px">Pesquisar</button>
	</form>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="row">
			<%
			TrabalhoDao tdao = new TrabalhoDao();
			AlunoDao adao = new AlunoDao();
			ProfessorDao pdao = new ProfessorDao();
			for (Trabalho t : tdao.listarTrabalho()) {
				Aluno a = adao.consultarAluno(t.getRa_aluno());
				Professor p = pdao.consultar(t.getId_professor());
			%>
			<div class="col-md-4">
				<h3><%=t.getTitulo()%></h3>
				<p><%= a.getNome() %></p>
				<p><%= p.getNome_professor() %></p>
				<p><%= t.getPalavra_chave1() %></p>
				<p>Resumo: <%=t.getResumo()%></p>

				<p><a href="../arquivosGrupo2/<%= t.getArquivo() %>">
				<svg xmlns="http://www.w3.org/2000/svg" width="400" height="16" fill="currentColor" class="bi bi-cloud-download-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 0a5.53 5.53 0 0 0-3.594 1.342c-.766.66-1.321 1.52-1.464 2.383C1.266 4.095 0 5.555 0 7.318 0 9.366 1.708 11 3.781 11H7.5V5.5a.5.5 0 0 1 1 0V11h4.188C14.502 11 16 9.57 16 7.773c0-1.636-1.242-2.969-2.834-3.194C12.923 1.999 10.69 0 8 0zm-.354 15.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 14.293V11h-1v3.293l-2.146-2.147a.5.5 0 0 0-.708.708l3 3z"/>
</svg></a></p>

				
				<a class="nav-link" style="color: blue" href="#">Ler mais...</a>
				</p>
			</div>

			<%
			}
			%>
			<div class="card-footer text-muted" style="text-align: center">
				&copy; Desenvolvido por: André | Maicon | Nathan <br> Libertas
				Faculdades Integradas - 2021
			</div>
		</div>
	</div>


	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>