<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Trabalho</title>
</head>
<body>
	<form action="save.jsp" method="post">
		<h1>Cadastro Repositorios</h1>
		
		<%
			// programação
		%>
		
		<input type="hidden" name="id"/>
		
		Nome:
		<input type="text" name="nome"S/>
		<br>
		
		Email:
		<input type="text" name="email"/>
		<br>
		
		Curso:
		<select>
		
		
		</select>
		
		Orientador:
		<select>
		
		
		</select>
		
		Titulo:
		<input type="text" name="titulo"/>
		<br>
		
		Palavras-chave:
		<input type="text" name="palavra_chave1"/>
		<br>
		<input type="text" name="palavra_chave2"/>
		<br>
		<input type="text" name="palavra_chave3"/>
		<br>
		<input type="text" name="palavra_chave4"/>
		<br>
		<input type="text" name="palavra_chave5"/>
		<br>
		
		Resumo: 
		<input type="text" name="resumo"> 
		<br>
		
		O trabalho pode ser postado?
		<input type="radiobutton" name="confirmacao">
		<br>
		
		<input type="submit" value="Salvar"/>
		
		
	
	</form>

</body>
</html>