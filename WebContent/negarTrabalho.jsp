<%@page import="org.libertas.TrabalhoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	<div class="card"  style="backgrund-color: #90EE90">
  		<div class="card-body" style="text-align:center">
    		<h5 class="card-title">Trabalho Negado com Sucesso</h5>
    		<a href="Pendentes.jsp" class="btn btn-primary">OK</a>
  		</div>
	</div>
</body>
</html>