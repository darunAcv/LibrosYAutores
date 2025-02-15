<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Libros</title>
	 <link rel="stylesheet" href="/css/libros_style.css"> 
				        <link rel="preconnect" href="https://fonts.googleapis.com">
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
				<link rel="preconnect" href="https://fonts.googleapis.com">
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
				<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300..700&display=swap" rel="stylesheet">
</head>
	<body>
		<div class="container">
			<h1>Libros</h1>
			<hr>
			<ul>
				<c:forEach items="${listaLibros}" var="libro">
					<li><a href="libros/${libro.key}" class="btn"> ${libro.key}</a></li>
				</c:forEach>
			</ul>
			<hr>
			<a href="/libros/formulario" class="btn btn-mt-none">Añadir libro ></a>
		</div>
	</body>
</html>