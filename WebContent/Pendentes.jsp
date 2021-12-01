<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trabalhos Pendentes</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>
<body class="p-3 mb-2 text-black" style="background-color:#90EE90">
	<div>
		<nav class="navbar navbar-expand-md navbar-light fixed-top" style="background-color:#32CD32">
			<img src="logo.png" width="250px" height="150px">
			<span class="display-4"><strong>Libertas Repositório de Trabalhos</strong></span>
			<a class="nav-link" style="padding-left: 120px; font-size: 25px; font-weight: bold; color: white" href="AprovacaoPostagem.jsp">Voltar</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<h3 type="text" style="position: absolute; left: 630px">Pendências</h3>
		<br>
		<br>
		<br>
		<div class="collapse.show" id="collapse">
			<h2>TITULO</h2>
			<h3>Autor: <!-- mostra o nome do autor --> -------------------------------Curso: <!-- mostra o curso --></h3>
			<h3>Orientador: <!-- adiciona o nome do orientador -->-----------------------------Palavras-chave: 
			<!-- mostra as tres primeiras palavras chaves --> ----------; ----------; -----------</h3>
			<h4>Resumo:</h4>
			
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id faucibus neque, porta vehicula est. 
	            In consequat velit lectus, et sodales metus dictum eu. Phasellus dapibus pellentesque dictum. Duis ac vulputate quam. 
	            Suspendisse imperdiet mi at bibendum lacinia. Vivamus leo lacus, molestie et porta at, feugiat eget ipsum. Sed eget.</p>
        </div>
        <button class="btn btn-outline-primary" data-toggle="collapse" data-target="#collapse" aria-expanded="false"  style="margin-left:500px">Aprovar</button>
        <button class="btn btn-outline-danger" data-toggle="collapse" data-target="#collapse" aria-expanded="false"  style="margin-right:400px">Rejeitar</button>
	</div>
	<br>
	<br><br>
	<div class="card-footer text-muted" style="text-align: center">
    	&copy; Desenvolvido por: André | Maicon | Nathan
    	<br>
    	Libertas Faculdades Integradas - 2021
  	</div>
  		
	
	
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>