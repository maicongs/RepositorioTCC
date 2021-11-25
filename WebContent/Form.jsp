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

	<%
	int id = 0;
	String nome = " ";
	int ra = 0;
	String email = " ";
	int id_curso = 0;
	int id_professor = 0;
	String titulo = " ";
	String palavra_chave1 = " ";
	String palavra_chave2 = " ";
	String palavra_chave3 = " ";
	String palavra_chave4 = " ";
	String palavra_chave5 = " ";
	String resumo = " ";
	String confirmacao = " ";
	%>
	
	<div class="p-3 mb-2 bg-success text-black">
	<div class="container">
		<header class="row" align="center">
			<h1>Cadastro de Trabalhos de Curso</h1>
		</header>
		
		<div class="row">
			<div role="main" class="col-md-6">
			
				<form action="EnvioUpload" enctype="multipart/form-data" method="post">
				<input type="hidden" name="id" value="<%= id %>"/>
		
				<label class="form-label">Nome:</label>
				<input class="form-control" type="text" name="nome" value="<%= nome %>"/>
				<br/>
		
				<label class="form-label">RA:</label>
				<input class="form-control" type="text" name="ra" value="<%= ra %>"/>
				<br/>
		
				<label class="form-label">Email:</label>
				<input class="form-control" type="text" name="email" value="<%= email %>"/>
				<br/>
		
				<labeL class="form-label">Curso:</labeL>
					<select class="form-select" name="curso" value="<%= id_curso %>">Curso
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
					<select class="form-select" value="<%= id_professor %>">Orientador
						<option selected>Selecione o orientador</option>
						<option>Alysson</option>
						<option>Dorival</option>
						<option>Ely</option>
						<option>Fernando</option>
					</select>
					</br>
		
				<label class="form-label">Titulo:</label>
					<input class="form-control" type="text" name="titulo" value="<%= titulo %>"/>
					</br>
				<label class="form-label">Palavras-chave:
					<input class="form-control" type="text" name="palavra_chave1" value="<%= palavra_chave1 %>"/>
					</br>
					<input class="form-control" type="text" name="palavra_chave2" value="<%= palavra_chave2 %>"/>
					</br>
					<input class="form-control" type="text" name="palavra_chave3" value="<%= palavra_chave3 %>"/>
					</br>
					<input class="form-control" type="text" name="palavra_chave4" value="<%= palavra_chave4 %>"/>
					</br>
					<input class="form-control" type="text" name="palavra_chave5" value="<%= palavra_chave5 %>"/>
					</br>	
				</label>
		</div>
		
		<aside role="complementary" class="col-md-6">
			
			<label class="form-label">Resumo:</label>
			<textarea class="form-control" name="resumo" value="<%= resumo %>" rows="10"></textarea>
			</br>
		
			<!-- input onde sera feito o upload de arquivos -->
			<input type="file" name="arquivo">
			</br></br></br>
			
			<label class="form-label">
			<span class="h5"><strong>O trabalho pode ser postado?</strong></span>
			</label>
			<input type="radio" name="confirmacao" value="<%= confirmacao %>"> Sim
			<input type="radio" name="confirmacao" value="<%= confirmacao %>"> Não
			</br>
			
			<input type="submit" class="btn btn-success" value="Salvar"/>
			<a href="Index.jsp" class="btn btn-danger">Voltar</a>		
		</aside>	
		</form>
	</div>
		<script src="js/bootstrap.min.js"></script>
	
</body>
</html>