<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template title="Cadastro de Aluno">
	<jsp:attribute name="scripts">
		<script>
			$(function() {
				alert('Seja bem-vindo!');
			});
		</script>
	</jsp:attribute>
	<jsp:body>
		<h1>Cadastro de Aluno</h1>
		<form action="register" method="post">
			<label for="idNome">Nome: </label> <input type="text" name="nome"
				id="idNome" /><br />
			<br /> <label for="idIdade">Idade: </label> <input type="number"
				name="idade" id="idIdade" /><br />
			<br /> <input type="radio" name="status" id="idAprovado"
				value="Aprovado"> <label for="idAprovado">Aprovado</label> <br />
			<br /> <input type="radio" name="status" id="idReprovado"
				value="Reprovado" /> <label for="idReprovado">Reprovado</label><br />
			<br /> <input type="checkbox" name="bolsistas" id="idBolsistas" />
			<label for="idBolsistas">Bolsista</label><br />
			<br /> <input type="submit" value="Enviar" /><br />
			<br /> ${msg}
		</form>
	</jsp:body>
</tags:template>