<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Consulta livros</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</head>
	<body>
		<%@ page import="com.livraria.dao.LivroDao, com.livraria.bean.*, java.util.*"%>	
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%	
			List<Livro> list = LivroDao.listar(); 
			request.setAttribute("list", list);	
		%>
		
		<nav class="navbar navbar-expand-lg navbar-light bg-light">	 
		  	<div class="collapse navbar-collapse" id="navbarNav">
		    	<ul class="navbar-nav">
			     	<li class="nav-item active">
			        	<a class="nav-link" href="index.jsp">Home</a>
			      	</li>
			   		<li class="nav-item active">
			        	<a class="nav-link" href="listaLivroPorCategoria.jsp">Consultar livro por categoria</a>
			      	</li>
			      	<li class="nav-item active">
			        	<a class="nav-link" href="adicionar.jsp">Cadastrar livro</a>
			      	</li>
			      	<li class="nav-item active">
			        	<a class="nav-link" href="pesquisaLivroPorId.jsp">Pesquisa livro por ID</a>
			      	</li>
			      	<li class="nav-item active">
			        	<a class="nav-link" href="#">Consultar todos os livros</a>
			      	</li>
		    	</ul>
		  	</div>
		</nav>
		
		<div class="container">		
			<table class="table">
				<tr>
					<th>ID</th>
					<th>Titulo</th>
					<th>Autor</th>
					<th>Categoria</th>
					<th>Preço</th>
					<th>Editar</th>
					<th>Excluir</th>
				</tr>
				<c:forEach items="${list}" var="livro">
					<tr>
						<td>${livro.getCodlivro()}</td>
						<td>${livro.getTitulo()}</td>
						<td>${livro.getAutor()}</td>
						<td>${livro.getCategoria()}</td>
						<td>${livro.getPreco()}</td>
						<td><a href="editar.jsp?codlivro=${livro.getCodlivro()}"><input type="button" value="Editar"></a> </td>
						<td><a href="deletar.jsp?codlivro=${livro.getCodlivro()}"><input type="button" value="Deletar"></a> </td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>
</html>