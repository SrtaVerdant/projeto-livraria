<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<title>Membros do projeto</title>
	</head>
	
	<style>
		.textodireita{
			text-align: right;
		}
		
		.textocentro{
			text-align: center;
		}
	</style>
	
	<body>	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">	 
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
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
        		<a class="nav-link" href="consultar.jsp">Consultar todos os livros</a>
      		</li>
	    </ul>
	  </div>
	</nav>
		<div class="container">
		 	 <div class="row mt-4">
			    <div class="textodireita col">1 - </div>
			    <div class="textocentro col-4">André Vitor Sena dos Anjos</div>
			    <div class="col">RGM: 25836048</div>
			  </div>
			  <div class="row">
			    <div class="textodireita col">2 - </div>
			    <div class="textocentro col-4">Gabriela Muniz Rezende</div>
			    <div class="col">RGM: 26732793</div>
		  	</div>
		  	<div class="row">
			    <div class="textodireita col">3 - </div>
			    <div class="textocentro col-4">Lucas Bischof Elias</div>
			    <div class="col">RGM: 28092210</div>
		  	</div>
		  	<div class="row">
			    <div class="textodireita col">4 - </div>
			    <div class="textocentro col-4">Juliane Silva de Lima</div>
			    <div class="col">RGM: 32363711</div>
		  	</div>
		</div>
	</body>
	
</html>