<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:template title="Cadastro de Vaga">
	<jsp:attribute name="scripts">
		<script>
			$(document).ready(function() {
				alert('Olá!');
			});
		</script>
	</jsp:attribute>
<jsp:body>
	<h1>Cadastro de Vaga</h1>
	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="idTitulo">Título: </label> <input type="text"
				class="form-control" name="titulo" id="idTitulo" />
		</div>
		<div class="form-group">
			<label for="idSalario">Salário: </label> <input type="number"
				class="form-control" name="salario" id="idSalario" />
		</div>
		<div class="form-group">
			<input type="checkbox" name="beneficios" id="idBeneficios" /> <label
				for="idBeneficios">Benefícios</label>
		</div>
		<div class="form-group">
			<input type="radio" name="tipo" value="PJ" id="idPJ" /> <label
				for="idPJ">PJ</label> <input type="radio" name="tipo" value="CLT"
				id="idCLT" /> <label for="idCLT">CLT</label>
		</div>
		<div class="form-group">
			<label for="idDescricao">Descrição: </label>
			<textarea class="form-control" name="descricao" id="idDescricao"
				rows="5" cols="50"></textarea>
		</div>

		<input type="submit" class="btn btn-primary" value="Cadastrar" />
	</form>
</jsp:body>
</tags:template>