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
			<option>Administração</option>
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
		
		<label class="form-label">Enviar Arquivo</label>
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