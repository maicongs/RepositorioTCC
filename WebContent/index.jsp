
<%@page import="org.libertas.Admin"%>
<%@page import="org.libertas.AdminDao"%>
<%@page import="org.libertas.RealizaLogin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<body class="p-3 mb-2 text-black" style="background-color: #90EE90">

	<div class="container">
		<nav class="navbar navbar-expand-md navbar-light fixed-top"
			style="background-color: #32CD32">
			<img src="logo.png" width="250px" height="150px"> <span
				class="display-4"><strong>Libertas Repositório de
					Trabalhos</strong></span>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					style="padding-left: 50px; font-size: 25px; font-weight: bold; color: white"
					href="Form.jsp">Submissão</a></li>
				<li class="nav-item"><a class="nav-link"
					style="padding-right: 30px; font-size: 25px; font-weight: bold; color: white"
					href="login.jsp">Entrar</a></li>
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
	<form class="form-inline" action="index.jsp">
		<input class="form-control mr-sm-2" type="search"
			placeholder="Buscar(sem acentuação)..." aria-label="Pesquisar"
			name="pesquisa" value="${param.pesquisa}"
			style="width: 600px; position: relative; left: 50%; margin-left: -300px">
		<button class="btn btn-outline-primary my-2 my-sm-0" type="submit"
			style="position: absolute; left: 630px">Pesquisar</button>
	</form>
	<br>
	<br>
	<br>
	<jsp:useBean id="tdao1" class="org.libertas.TrabalhoDao" scope="page" />
	<c:forEach var="t" items="${tdao1.pesquisarTrabalho(param.pesquisa)}">
		<div class="container" style="margin-left: 35%" width="16">
		<div class="row g-5 py-4 row-cols-1 row-cols-lg-3">
				<div class="col-3" style="background-color: #6DCF6D">
					<h4>${t.titulo}</h4>
					<p>Nome: ${t.nome}
					<p>
					<p>Orientador: ${t.nome_professor}
					<p>
					<p>Curso: ${t.curso}
					<p>
					<p>Resumo: ${t.resumo}</p>
					<p>Palavra-chave: ${t.palavra_chave1}</p>
					<p>${t.palavra_chave2}</p>
					<p>
						<a href="../arquivosGrupo2/${t.arquivo}"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-cloud-download"
								viewBox="0 0 16 16">
  <path
									d="M4.406 1.342A5.53 5.53 0 0 1 8 0c2.69 0 4.923 2 5.166 4.579C14.758 4.804 16 6.137 16 7.773 16 9.569 14.502 11 12.687 11H10a.5.5 0 0 1 0-1h2.688C13.979 10 15 8.988 15 7.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 2.825 10.328 1 8 1a4.53 4.53 0 0 0-2.941 1.1c-.757.652-1.153 1.438-1.153 2.055v.448l-.445.049C2.064 4.805 1 5.952 1 7.318 1 8.785 2.23 10 3.781 10H6a.5.5 0 0 1 0 1H3.781C1.708 11 0 9.366 0 7.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z" />
  <path
									d="M7.646 15.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 14.293V5.5a.5.5 0 0 0-1 0v8.793l-2.146-2.147a.5.5 0 0 0-.708.708l3 3z" />
</svg></a>
					</p>
				

				</div></div>
			</div>

		</div>
		</div>
	</c:forEach>


	<br>
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