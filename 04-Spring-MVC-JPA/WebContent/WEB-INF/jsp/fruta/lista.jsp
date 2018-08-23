<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Cadastro de Fruta">
	<h1>Listagem de Frutas</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			<span>${msg}</span>
		</div>
	</c:if>
	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Orgânico</th>
			<th>Quantidade</th>
			<th>Valor</th>
			<th>Atualizar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${lista}" var="f">
			<tr>
				<td>${f.codigo}</td>
				<td>${f.nome}</td>
				<td>${f.organico ? "Sim" : "Não"}</td>
				<td>${f.quantidade}</td>
				<td>${f.valor}</td>
				<td><a class="btn btn-primary" href="<c:url value="/fruta/editar/${f.codigo}" />">Editar</a></td>
				<td><a class="btn btn-danger" href="<c:url value="/fruta/excluir/${f.codigo}" />" class="alert-danger">Excluir</a>
			</tr>
		</c:forEach>
	</table>
</tags:template>