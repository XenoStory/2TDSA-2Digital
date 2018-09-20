<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<tags:template titulo="Cadastro de Passagem">
	<h1>Cadastro de Passagem</h1>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	<c:url value="/passagem/cadastrar" var="acao" />
	<form:form action="${acao}" method="post" modelAttribute="passagem">
		<div class="form-group">
			<form:label path="origem">Origem</form:label>
			<form:input path="origem" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="destino">Destino</form:label>
			<form:input path="destino" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="data">Data</form:label>
			<form:input path="data" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:checkbox path="bagagem" />
			<form:label path="bagagem">Bagagem</form:label>
		</div>
		<div class="form-group">
			<form:label path="valor">Valor</form:label>
			<form:input path="valor" cssClass="form-control"/>
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary" />
	</form:form>
</tags:template>