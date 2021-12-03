<%@page import="org.libertas.Professor"%>
<%@page import="org.libertas.ProfessorDao"%>
<%@page import="org.libertas.Curso"%>
<%@page import="org.libertas.CursoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Trabalho</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/all.min.css" />
</head>
<body class="p-3 mb-2 text-black" style="background-color: #90EE90">
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
	<div class="container">
		<nav class="navbar navbar-expand-md navbar-light fixed-top"
			style="background-color: #32CD32">
			<img src="logo.png" width="250px" height="150px"> <span
				class="display-2" style="padding-left: 120px"><strong>Enviar
					Trabalho de Curso</strong></span>
		</nav>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<h3 class="mb-3" style="padding-left: 350px">Cadastrar Trabalho
			de Curso</h3>
		<form action="EnvioUpload" enctype="multipart/form-data" method="post">
			<div class="row">
				<div role="main" class="col-6">
					<label class="form-label"><strong style="font-size: 20px">Nome</strong></label>
					<input type="text" class="form-control" name="nome"
						value="<%=nome%>" /> <br> <label class="form-label"><strong
						style="font-size: 20px">RA</strong></label> <input type="text"
						class="form-control" name="ra" value="<%=ra%>" /> <br> <label
						class="form-label"><strong style="font-size: 20px">Email</strong></label>
					<input type="email" class="form-control" name="email"
						value="<%=email%>" /> <br> <label class="form-label"><strong
						style="font-size: 20px">Curso</strong></label> <select name="id_curso"
						class="form-select" aria-label="Default select example">
						<%
						CursoDao cdao = new CursoDao();
						for (Curso c : cdao.listar()) {
							String sel = "";
							if (c.equals(sel)) {
								sel = " SELECTED ";
							}
							out.print("<option value=" + c.getId_curso() + sel + ">");
							out.print(c.getCurso());
							out.print("</option>");
						}
						%>
					</select> <br> <label class="form-label"><strong
						style="font-size: 20px">Orientador</strong></label> <select
						name="id_professor" class="form-select"
						aria-label="Default select example">
						<%
						ProfessorDao pdao = new ProfessorDao();
						for (Professor p : pdao.listar()) {
							String sel = "";
							if (p.equals(sel)) {
								sel = " SELECTED ";
							}
							out.print("<option value=" + p.getId_professor() + sel + ">");
							out.print(p.getNome_professor());
							out.print("</option>");
						}
						%>
					</select> <br> <label class="form-label"><strong
						style="font-size: 20px">Titulo</strong></label> <input type="text"
						class="form-control" name="titulo" value="<%=titulo%>" /> <br>
					<label class="form-label"><strong style="font-size: 20px">Palavras-chave</strong>
						<input class="form-control" type="text" name="palavra_chave1"
						value="<%=palavra_chave1%>"> <br> <input
						class="form-control" type="text" name="palavra_chave2"
						value="<%=palavra_chave2%>"> <br> <input
						class="form-control" type="text" name="palavra_chave3"
						value="<%=palavra_chave3%>"> <br> <input
						class="form-control" type="text" name="palavra_chave4"
						value="<%=palavra_chave3%>"> <br> <input
						class="form-control" type="text" name="palavra_chave5"
						value="<%=palavra_chave3%>"> <br> </label>
				</div>
				<aside role="complementary" class="col-6">
					<label class="form-label"><strong style="font-size: 20px">Resumo</strong></label>
					<textarea class="form-control" name="resumo" value="<%=resumo%>"
						rows="10"></textarea>
					<br> <input type="file" name="arquivo"> </br>
					</br>
					</br> <label class="form-label"> <span class="h5"><strong>O
								trabalho pode ser postado?</strong></span>
					</label> <input type="radio" name="confirmacao" value="S"> Sim <input
						type="radio" name="confirmacao" value="N"> Não </br> 
						<input type="submit"class="btn btn-primary" value="Salvar"/>
					<a href="Index.jsp" class="btn btn-danger">Voltar</a>
				</aside>
				<div class="card-footer text-muted" style="text-align: center">
					&copy; Desenvolvido por: André | Maicon | Nathan <br> Libertas
					Faculdades Integradas - 2021
				</div>
			</div>
	</div>

	<script src="js/bootstrap.min.js"></script>
<<<<<<< Updated upstream
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>	
	<script>
		(function() {
			'use strict';
        window.addEventListener('load', function() {
        	var forms = document.getElementsByClassName('needs-validation');
         	var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
            	event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
       }, false);
     })();
	</script>
=======
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</form>
>>>>>>> Stashed changes
</body>
</html>