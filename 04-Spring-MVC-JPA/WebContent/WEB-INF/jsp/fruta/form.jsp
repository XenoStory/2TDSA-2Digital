<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Cadastro de Fruta">
	<h1>Cadastro de Fruta</h1>
	
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			<span>${msg}</span>
		</div>
	</c:if>
	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" id="id-nome" class="form-control" />
		</div>
		<div class="form-group">
			<input type="checkbox" name="organico" id="id-organico" />
			<label for="id-organico">Orgânico</label>
		</div>
		<div class="form-group">
			<label for="id-quantidade">Quantidade</label>
			<input type="number" name="quantidade" id="id-quantidade" class="form-control"/>
		</div>
		<div class="form-group">
			<label for="id-valor">Valor</label>
			<input type="number" name="valor" id="id-valor" class="form-control" />
		</div>
		<input type="submit" value="Enviar" class="btn btn-primary" />
	</form>
</tags:template>
