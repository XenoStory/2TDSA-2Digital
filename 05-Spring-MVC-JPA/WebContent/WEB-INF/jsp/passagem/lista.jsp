<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Passagens">
	<h1>Passagens</h1>
		<c:url value="/passagem/filtrar" var="acao"/>
	    <form class="form-inline my-2 my-lg-0" action="${acao}">
	    	<label style="padding-right: 5px;" for="idOrigem">Origem: </label>
	    	<input name="origem" class="form-control mr-sm-2" type="search" 
	    		placeholder="Digite uma origem" aria-label="Search" id="idOrigem">
	    	<label style="padding-right: 5px;" for="idDestino">Destino: </label>
	      	<input name="destino" class="form-control mr-sm-2" type="search" 
	      		placeholder="Digite um destino" aria-label="Search" id="idDestino">
	      	<label style="padding-right: 5px;" for="idData">Data: </label>
	      	<input name="data" class="form-control mr-sm-2" type="search" 
	      		placeholder="Digite uma data" aria-label="Search" id="idData">
	      
	      	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
	    </form>
	    <br />
	<table class="table">
		<tr>
			<th>Origem</th>
			<th>Destino</th>
			<th>Data</th>
			<th>Bagagem</th>
			<th>Valor</th>
		</tr>
		<c:forEach items="${lista}" var="p">
			<tr>
				<td>${p.origem}</td>
				<td>${p.destino}</td>
				<td><fmt:formatDate value="${p.data.time}" pattern="dd/MM/yyyy "/></td>
				<td>${p.bagagem ? "Sim" : "Não"}</td>
				<td>${p.valor}</td>
			</tr>
		</c:forEach>
	</table>
</tags:template>