<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>P�gina Inicial</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>
<body>
	<div class="container">
		<form action="Repositorio" enctype="multipart/form-data" method="post">
		<div class="p-3 mb-2 text-black" style="background-color:#90EE90">
			<div class="p-3 mb-2 text-black">
				<nav class="navbar navbar-expand" style="background-color:#32CD32">
				<img src="logo.png" width="200px" height="100px">
				<span class="display-3">Libertas Reposit�rio de Trabalhos</span>
				<div class="collapse navbar-collapse">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<a class="nav-link" style="color: black" href="Form.jsp">Submiss�o</a>
						</li>
						<li class="list-group-item">
							<a class="nav-link" style="color: black" href="AprovacaoTrabalho.jsp">Entrar</a>
						</li>
					</ul>	
				</div>
				</nav>
			</div>
			<div class="row">
				<div role="main" class="col-md-3">
					<nav class="nav flex-column">
					<form class="form-inline">
						<input class="form-control mr-sm-2" type="search" placeholder="Buscar...">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
					</form>
					<span class="navbar-text">Filtros</span>
					<div class="dropdown">
						<button class= "btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Curso</button>
										
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							 <a class="dropdown-item" href="#">Alguma a��o</a>
							 <a class="dropdown-item" href="#">Outra a��o</a>
							 <a class="dropdown-item" href="#">Alguma coisa aqui</a>
						</div>
					</div>
					</br>
					<div class="dropdown">
						<button class= "btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Orientador
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">Alguma a��o</a>
							<a class="dropdown-item" href="#">Outra a��o</a>
							<a class="dropdown-item" href="#">Alguma coisa aqui</a>
						</div>
					</div>
					</br>
					<div class="dropdown">
						<button class= "btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Ano
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">Alguma a��o</a>
							<a class="dropdown-item" href="#">Outra a��o</a>
							<a class="dropdown-item" href="#">Alguma coisa aqui</a>
						</div>
					</div>
					</br>
					<button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Autor
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<input class="form-control mr-sm-2" type="search" placeholder="Buscar...">
					</div>
					</nav>
				</div>	
			</div>
			</div>
			<aside role="complementary" class="col-md-5">
				<div class="media">
	  				<div class="media-body">
	    				<h5 class="mt-0 mb-1">Objeto m�dia</h5>
	    					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
	  				</div>
			   </div>
			</aside>
			</form>
		</div>
	
	
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>