<%@page import="org.libertas.TrabalhoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trabalho Enviado com sucesso</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/all.min.css" />
</head>
<header>
	<nav class="navbar navbar-expand" style="background-color: #32CD32">
		<img src="logo.png" width="200px" height="100px"> <span
			class="display-3">Libertas Reposit�rio de Trabalhos</span>
</header>
<title>Trabalho Aceito</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>
<body class="p-3 mb-2 text-black" style="background-color: #90EE90">
	<%
	int id_trabalho = Integer.parseInt(request.getParameter("id_trabalho"));
	TrabalhoDao tdao = new TrabalhoDao();
	tdao.negarTrabalho(id_trabalho);
	%>

	<div class="alert" style="background-color: #90EE90; margin: auto">
		<div class="card-body"
			style="text-align: center; margin-top: 100px; background-color: #90EE90">
			<p>Trabalho atualizado com sucesso!!!</p>
			<a href="todosTrabalhos.jsp" class="btn btn-primary"
				style="margin: auto">OK</a>
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

	<div class="card"  style="backgrund-color: #90EE90">
  		<div class="card-body" style="text-align:center">
    		<h5 class="card-title">Trabalho Negado com Sucesso</h5>
    		<a href="Pendentes.jsp" class="btn btn-primary">OK</a>
  		</div>
	</div>
</body>
</html>