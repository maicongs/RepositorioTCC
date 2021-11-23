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
	<h1>Cadastro de Trabalhos de Curso</h1>
	
	<form action="EnvioUpload" enctype="multipart/form-data" method="post">
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
		
		<labeL class="form-label">Curso:</labeL>
		<select class="form-select" name="curso">Curso
			<option value="0" selected>Selecione o curso</option>
			<option value="1">Administração</option>
			<option>Ciencias Contábeis</option>
			<option>Direito</option>
			<option>Enfermagem</option>
			<option>Engenharia Civil</option>
			<option>Engenharia de Produção</option>
			<option>Pedagogia</option>
			<option>Psicologia</option>
			<option>Sistemas de Informação</option>
			<option>Odontologia</option>
			
		</select>
		</br>
		
		<labeL class="form-label">Orientador:</labeL>
		<select class="form-select">Orientador
			<option selected>Selecione o orientador</option>
			<option>Alysson</option>
			<option>Dorival</option>
			<option>Ely</option>
			<option>Fernando</option>
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
		</br>
		
		<label class="form-label">Resumo</label>
		<textarea class="form-control" name="resumo" rows="5"></textarea>
		</br>
		
<!-- 		input onde sera feito o upload de arquivos -->
		<input type="file" name="arquivo">
		</br>
		</br>
		
		<label class="form-label">
		<span class="h5"><strong>O trabalho pode ser postado?</strong></span>
		</label>
			<input type="radio" name="confirmacao"> Sim
			<input type="radio" name="confirmacao"> Não
			<br>
		
		<input type="submit" class="btn btn-danger" value="Salvar"/>
		<a href="Index.jsp" class="btn btn-success">Voltar</a>
		
		
	
	</form>
	</div>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>