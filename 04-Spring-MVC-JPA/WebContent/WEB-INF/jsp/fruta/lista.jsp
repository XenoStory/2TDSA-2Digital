<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
				<td><a class="btn btn-danger" onclick="codigoF.value = ${f.codigo}" href="#" class="alert-danger" data-toggle="modal" data-target="#exampleModal">Excluir</a>
			</tr>
		</c:forEach>
	</table>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Confirmar exclusão?</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
		        Você tem certeza que deseja remover o registro?
	      </div>
	      <div class="modal-footer">
	      	<c:url value="/fruta/excluir/" var="url" />
	      	<form action="${url}" method="post">
			       <input type="hidden" name="codigo" id="codigoF"/>
			       <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
			       <button type="submit" class="btn btn-danger">Confirmar</button>
	       	</form>
	      </div>
	    </div>
	  </div>
	</div>
</tags:template>