<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Aluno</title>
</head>
<body>
	<h1>Cadastro de Aluno</h1>
	<form action="register" method="post">
		<label for="idNome">Nome: </label>
		<input type="text" name="nome" id="idNome" /><br /><br />
		<label for="idIdade">Idade: </label>
		<input type="number" name="idade" id="idIdade" /><br /><br />
		<input type="radio" name="status" id="idAprovado" value="Aprovado">
		<label for="idAprovado">Aprovado</label> <br /><br />
		<input type="radio" name="status" id="idReprovado" value="Reprovado" />
		<label for="idReprovado">Reprovado</label><br /><br />
		<input type="checkbox" name="bolsistas" id="idBolsistas" />
		<label for="idBolsistas">Bolsista</label><br /><br />
		<input type="submit" value="Enviar" /><br /><br />
		
		${msg}
</body>
</html>