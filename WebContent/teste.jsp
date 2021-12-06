<%@page import="org.libertas.Admin"%>
<%@page import="org.libertas.AdminDao"%>
<%@page import="org.libertas.RealizaLogin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.libertas.ProfessorDao"%>
<%@page import="org.libertas.Professor"%>
<%@page import="org.libertas.Aluno"%>
<%@page import="org.libertas.AlunoDao"%>
<%@page import="org.libertas.Trabalho"%>
<%@page import="org.libertas.TrabalhoDao"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/all.min.css" />
</head>
<body>
	<jsp:useBean id="tdao1" class="org.libertas.TrabalhoDao" scope="page" />
	<c:forEach var="t" items="${tdao1.pesquisarTrabalho(param.pesquisa)}"/>
		<div class="container px-4 py-5">
			<div
				class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">
				<div class="col" style="background-color: #6DCF6D">
					<h4>${t.titulo}</h4>
					<p>
						Nome: ${t.nome}

						<p>
					
					<p>Orientador: ${t.nome_professor}
					
					<p>
					
					<p>Curso: ${t.curso}
					
					<p>
					
					<p>Resumo: ${t.resumo}</p>
					<p>Palavra-chave: ${t.palavra_chave1}</p>
					<p>${t.palavra_chave2}</p>
					
					
					
					
<script src="js/bootstrap.min.js"></script></
					body>
</html>