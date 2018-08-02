<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC - Contato</title>
</head>
<body>
	<h1>Formulário de contato</h1>
	<p>${successMsg}</p>
	<form action="cadastrar" method="post">
		<label for="idNome">Nome: </label>
		<input type="text" name="nome" id="idNome"><br /><br />
		<label for="idEmail">E-mail: </label>
		<input type="text" name="email" id="idEmail"><br /><br />
		<label for="idTelefone">Telefone: </label>
		<input type="text" name="telefone" id="idTelefone" /><br /><br />
		<input type="submit" value="Enviar" />
	</form>
</body>
</html>