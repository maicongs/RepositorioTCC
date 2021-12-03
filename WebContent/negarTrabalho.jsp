<%@page import="org.libertas.TrabalhoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id_trabalho = Integer.parseInt(request.getParameter("id_trabalho"));
		TrabalhoDao tdao = new TrabalhoDao();
		tdao.negarTrabalho(id_trabalho);
	%>
</body>
</html>