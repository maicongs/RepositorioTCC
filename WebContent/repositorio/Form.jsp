<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Trabalho</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/all.min.css"/>
</head>
<body>
	<div class="container">
	<h1>Cadastro Repositorios</h1>
	<form action="save.jsp" method="post">
		<input type="hidden" name="id"/>
		
		<label class="form-label">Nome</label>
		<input class="form-control" type="text" name="nome"/>
		<br/>
		
		<label class="form-label">RA</label>
		<input class="form-control" type="text" name="ra"/>
		<br/>
		
		<label class="form-label">Email</label>
		<input class="form-control" type="text" name="email"/>
		<br/>
		
		<select class="form-select">Curso
			<option selected>Selecione o curso</option>
			<option></option>
		</select>
		</br>
		
		<select class="form-select">Orientador
			<option selected>Selecione o orientador</option>
			<option></option>
		</select>
		</br>
		
		<label class="form-label">Titulo</label>
		<input class="form-control" type="text" name="titulo"/>
		</br>
		
		<label class="form-label">Palavras-chave
			<input class="form-control" type="text" name="palavra_chave1"/>
			</br>
			<input class="form-control" type="text" name="palavra_chave2"/>
			</br>
			<input class="form-control" type="text" name="palavra_chave3"/>
			</br>
			<input class="form-control" type="text" name="palavra_chave4"/>
			</br>
			<input class="form-control" type="text" name="palavra_chave5"/>
			</br>
		</label>
		
	
		Resumo: 
		<input type="text" name="resumo"> 
		<br>
		
		Enviar Arquivo:
		</br>
		
		
		
		O trabalho pode ser postado?
		<input type="radio" name="confirmacao">
		<br>
		
		<input type="submit" value="Salvar"/>
		
		
	
	</form>
	</div>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>