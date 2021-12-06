<%@page import="org.libertas.Professor"%>
<%@page import="org.libertas.Aluno"%>
<%@page import="org.libertas.Trabalho"%>
<%@page import="org.libertas.ProfessorDao"%>
<%@page import="org.libertas.AlunoDao"%>
<%@page import="org.libertas.TrabalhoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de trabalhos pendentes</title>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>
<body class="p-3 mb-2 text-black" style="background-color: #90EE90">
	<div class="container"/>
	<h1>Trabalhos Pendentes</h1>
	<a href="todosTrabalhos.jsp" class="btn btn-primary" style="margin-left:80%">Trabalhos cadastrados</a>
	
	<table class="table table-striped table-hover"/>

		<th>Titulo</th>
		<th>Aluno</th>
		<th>Professor</th>
		<th>Resumo</th>
		<th>Visualizar</th>
		<th>Aprovar</th>
		<th>Negar</th>


		<%
			TrabalhoDao tdao = new TrabalhoDao();
			AlunoDao adao = new AlunoDao();
			ProfessorDao pdao = new ProfessorDao();
			for (Trabalho t : tdao.listarTrabalhop()) {
				Aluno a = adao.consultarAluno(t.getRa_aluno());
				Professor p = pdao.consultar(t.getId_professor());
			%>
			<tr>
				<td><p><%=t.getTitulo()%></p></td>
				<td><p><%= a.getNome() %></p></td>
				<td><p><%= p.getNome_professor() %></p></td>
				<td><p><%=t.getResumo()%><p></td>
				
				<td><p><a href="../arquivosGrupo2/<%= t.getArquivo() %>"><svg xmlns="http://www.w3.org/2000/svg" width="80" height="16" fill="currentColor" class="bi bi-cloud-download-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 0a5.53 5.53 0 0 0-3.594 1.342c-.766.66-1.321 1.52-1.464 2.383C1.266 4.095 0 5.555 0 7.318 0 9.366 1.708 11 3.781 11H7.5V5.5a.5.5 0 0 1 1 0V11h4.188C14.502 11 16 9.57 16 7.773c0-1.636-1.242-2.969-2.834-3.194C12.923 1.999 10.69 0 8 0zm-.354 15.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 14.293V11h-1v3.293l-2.146-2.147a.5.5 0 0 0-.708.708l3 3z"/>
</svg></td>
			

				<td><a href="aceitarTrabalho.jsp?id_trabalho=<%=t.getId_trabalho() %>" class="btn btn-primary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
</svg>
					</a></td>
					<td><a href="negarTrabalho.jsp?id_trabalho=<%= t.getId_trabalho() %>" class="btn btn-danger">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
</svg>
					</a></td>
					
</tr>

		<%
			}
		%>
	</table>
	</div>
	
	<a href="indexAdmin.jsp" class="btn btn-danger" style="margin-left:600px">Voltar</a>
	
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>