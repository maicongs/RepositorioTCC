<%@page import="org.libertas.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entrar</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>

 <body class="p-3 mb-2 text-black" style="background-color:#90EE90" >
 
 <%
		int id_admin=0;
		String email="";
		String senha="";  // PARTE JAVASCPRIT DO CODIGO DE LOGIN
		if (request.getParameter("id_admin")!=null){
			id_admin = Integer.parseInt(request.getParameter("id_admin"));
			Admin ad = new Admin();
			email = ad.getEmail();
			senha = ad.getSenha();
		}
	
	
	%>
 	<header>
	 	<nav class="navbar navbar-expand" style="background-color:#32CD32">
		<img src="logo.png" width="200px" height="100px">
		<span class="display-3">Libertas Repositório de Trabalhos</span>
	</header>
 	<div class="text-center" style="position: absolute; width:100%; height:100%">
 		<div style= "position: absolute; top:50%; left:50%; width:300px; margin-left: -150px; margin-top: -250px">
	    <form class="form-signin" action="RealizaLogin" method="post">
	      <h1 class="text-center">Login</h1>
	      <label for="inputEmail" class="sr-only">Usuário</label>
	      <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Digite seu email..." required autofocus value="<%= email %>"/>
	      <label for="inputPassword" class="sr-only">Senha</label>
	      <input type="password" id="inputPassword" class="form-control" name="senha" placeholder="Digite sua senha..." requiredvalue="<%= senha %>"/>
	      <br>
	      <input class="btn btn-lg btn-primary btn-block" type="submit" value="Entrar">
	      <a href="Pendentes.jsp"></a>
	      <input class="btn btn-lg btn-danger btn-block" type="submit" value="Voltar">
	      <a href="index.jsp"></a>
	      
	      
	    </form>
	    </div>
    </div>
 </body>
</html>