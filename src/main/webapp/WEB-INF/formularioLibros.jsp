<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Formulario</title>
			<link rel="stylesheet" href="/css/libros_style.css">
							        <link rel="preconnect" href="https://fonts.googleapis.com">
							<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
							<link rel="preconnect" href="https://fonts.googleapis.com">
							<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
							<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300..700&display=swap" rel="stylesheet">
		</head>
		<body>
			<div class="container">
				<h1>Añadir Libro</h1>
				<hr>
					<form action="/procesa/libros" method="POST">
						<div>
							<label class="txt" for="autor">Autor:</label>
							<input class="txt-input mt" type="text" name="autor"/>
						</div>
						<div>
							<label class="txt" for="titulo">Título:</label>
							<input class="txt-input mt" type="text" name="titulo"/>
						</div>
						<input type="submit" class="btn" value="Guardar libro">
					</form>
					<hr>
					<a href="/libros" class="btn btn-mt-none">< Volver</a>
			</div>
		</body>
	</html>