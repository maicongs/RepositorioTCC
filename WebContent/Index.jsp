<%@page import="org.libertas.Admin"%>
<%@page import="org.libertas.AdminDao"%>
<%@page import="org.libertas.RealizaLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Página Inicial</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>
<body class="p-3 mb-2 text-black" style="background-color:#90EE90">
<%

    AdminDao admindao = new AdminDao();
	Admin admin = new Admin();
	

	admin.setEmail(request.getParameter("email"));
	admin.setSenha(request.getParameter("senha"));
	
	admindao.submissao(admin);

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
    	 <input class="form-control mr-sm-2" type="search" placeholder="Buscar..." aria-label="Pesquisar" style="width: 600px; position:relative; left:50%; margin-left: -300px">
   		 <button class="btn btn-outline-primary my-2 my-sm-0" type="submit" style="position: absolute; left: 630px">Pesquisar</button>
  	</form>
  	<br>
  	<br>
  	<br>
  	<div class="container">
        <div class="row">
          <div class="col-md-4">
            <h2>Título</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id faucibus neque, porta vehicula est. 
            In consequat velit lectus, et sodales metus dictum eu. Phasellus dapibus pellentesque dictum. Duis ac vulputate quam. 
            Suspendisse imperdiet mi at bibendum lacinia. Vivamus leo lacus, molestie et porta at, feugiat eget ipsum. Sed eget.<a class="nav-link" 
            style= "color: blue" href="#">Ler mais...</a> </p>
          </div>
          <div class="col-md-4">
            <h2>Título</h2>
            <p>onec elementum diam nisi, non vestibulum magna eleifend non. Aenean tristique finibus lacinia. Vestibulum faucibus lectus tellus, 
            at auctor sem bibendum non. Suspendisse efficitur velit est, quis aliquam urna pellentesque a. Nam iaculis dolor lectus, sit 
            amet laoreet mauris facilisis non. Cras sem nulla, pretium et condimentum vel, fringilla placerat.<a class="nav-link" 
            style= "color: blue" href="#">Ler mais...</a> </p>
          </div>
          <div class="col-md-4">
            <h2>Título</h2>
            <p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis maximus sodales mi, eget 
            feugiat dui rutrum et. Etiam lobortis laoreet ligula, et pulvinar erat aliquam fermentum. Cras accumsan lacus nisl, quis
             ornare nibh viverra ac. Aliquam erat volutpat. Nulla euismod nisl id velit aliquam, mattis tincidunt.<a class="nav-link" 
            style= "color: blue" href="#">Ler mais...</a> </p>
          </div>
        
          <div class="card-footer text-muted" style="text-align: center">
    			&copy; Desenvolvido por: André | Maicon | Nathan
    			<br>
    			Libertas Faculdades Integradas - 2021
  		  </div>
  		</div>
  	</div>
	
	
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>