<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Livro</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</head>
	<body>
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
		      	<li class="nav-item">
		        	<a class="nav-link" href="pesquisaLivroPorId.jsp">Pesquisa livro por ID</a>
		      	</li>
		      	<li class="nav-item active">
	        		<a class="nav-link" href="consultar.jsp">Consultar todos os livros</a>
	      		</li>
		    </ul>
		  </div>
		</nav>
		
		<%@page import="com.livraria.bean.*, com.livraria.dao.*" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		
		<%
			String codlivro = request.getParameter("codlivro");
			Livro livro = LivroDao.getPorId(Integer.parseInt(codlivro));
			
			
					
		%>
		
		<div class="container">
		
		
			<h1>Consulta livro</h1>				
				<%	if(livro == null){
						out.println("Não foi encontrado livro com este ID");
					}else{ 
				%>	
			
				<div class="row mb-3">			
					<div class="col-1">
						<label>Título:</label>
					</div>
					<div class="col-11">
						<span><%= livro.getTitulo()%></span>
					</div>
				</div>
				<div class="row mb-3">			
					<div class="col-1">
						<label>Autor:</label>
					</div>
					<div class="col-11">
						<span><%= livro.getAutor()%></span>						
					</div>
				</div>
				<div class="row mb-3">			
					<div class="col-1">
						<label>Categoria:</label>
					</div>
					<div class="col-11">
						<span><%= livro.getCategoria()%></span>						
					</div>
						
				</div>
				<div class="row mb-3">			
					<div class="col-1">
						<label>Preço:</label>
					</div>
					<div class="col-11">
						<span>R$ <%= livro.getPreco()%></span>
					</div>
				</div>
				
				<div class="row mb-3">			
					<div class="col-1">
						<a href="editar.jsp?codlivro=<%= livro.getCodlivro()%>"><input type="button" value="Editar"></a>
					</div>
					<div class="col-11">					
						<a href="deletar.jsp?codlivro=<%= livro.getCodlivro()%>"><input type="button" value="Deletar"></a>
					</div>
				</div>
				
			<% } %>
		</div>
	</body>

	
</html>