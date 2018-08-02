<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulário</title>
</head>
<body>
<h1>Cadastro de Carro</h1>
<form action="cadastrar" method="post">
	<label for="idModelo">Modelo: </label>
	<input type="text" name="modelo" id="idModelo" /><br /><br />
	<label for="idAno">Ano: </label>
	<input type="number" name="ano" id="idAno" /><br /><br />
	<input type="checkbox" name="importado" />Importado<br /><br />
	<input type="checkbox" name="blindado" />Blindado<br /><br />
	<label for="idMarca">Marca: </label>
	<input type="text" name="marca" id="idMarca" /><br /><br />
	<input type="submit" value="Enviar" />
	
	<p>Informações sobre o carro: </p>
	<p>Modelo: ${car.modelo}</p>
	<p>Ano: ${car.ano}</p>
	<p>Importado: ${car.importado ? "Sim" : "Não"}</p>
	<p>Blindado: ${car.importado ? "Sim" : "Não"}</p>
	<p>Marca: ${car.marca}</p>
</form>
</body>
</html>