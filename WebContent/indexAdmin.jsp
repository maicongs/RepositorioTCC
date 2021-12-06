
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
					href="Pendentes.jsp">Pendentes</a></li>
				<li class="nav-item"><a class="nav-link"
					style="padding-right: 30px; font-size: 25px; font-weight: bold; color: white"
					href="index.jsp">Logout</a></li>
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
			placeholder="Buscar(sem acentuação)..." aria-label="Pesquisar" name="pesquisa"
			value="${param.pesquisa}"
			style="width: 600px; position: relative; left: 50%; margin-left: -300px">
		<button class="btn btn-outline-primary my-2 my-sm-0" type="submit"
			style="position: absolute; left: 630px">Pesquisar</button>
	</form>
	<br>
	<br>
	<br>
	<jsp:useBean id="tdao1" class="org.libertas.TrabalhoDao" scope="page" />
	<c:forEach var="t" items="${tdao1.pesquisarTrabalho(param.pesquisa)}">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>${t.titulo}</p>
					<p>${t.nome_professor}</p>
					<p>${t.curso}</p>
					<p>${t.resumo}</p>
					<p>${t.palavra_chave1}</p>
					<p>${t.palavra_chave2}</p>
					<p>${t.palavra_chave3}</p>
					<p><a href="../arquivosGrupo2/${t.arquivo}">Arquivo</a></p>
				</div>
			</div>
		</div>
	</c:forEach>


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