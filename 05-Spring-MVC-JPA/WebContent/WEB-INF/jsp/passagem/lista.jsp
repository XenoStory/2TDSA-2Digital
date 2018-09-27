<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Passagens">
	<h1>Passagens</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success">${msg}</div>
	</c:if>
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
			<th>Checkin</th>

			
		</tr>
		<c:forEach items="${lista}" var="p">
			<tr>
				<td>${p.origem}</td>
				<td>${p.destino}</td>
				<td><fmt:formatDate value="${p.data.time}" pattern="dd/MM/yyyy "/></td>
				<td>${p.bagagem ? "Sim" : "Não"}</td>
				<td>${p.valor}</td>
				<td>${p.checkin ? "Sim" : "Não"}</td>
				<c:if test="${!p.checkin}">
					<td>
						<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1" onclick="codigoCheckin.value = ${p.codigo}">Realizar checkin</button>
					</td>
					<td>
						<a class="btn btn-primary" href="<c:url value="/passagem/editar/${p.codigo}" />">Editar</a>
					</td>
					<td>
						<button onclick="codigoPassagem.value = ${p.codigo}" type="submit" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
							Excluir
						</button>
					</td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</tags:template>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Excluir passagem</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Desejar confirmar exclusão?
      </div>
      <div class="modal-footer">
      <c:url value="/passagem/excluir/" var="modalAction" />
        <form action="${modalAction}" method="post" method="post">
       		<input type="hidden" name="codigo" id="codigoPassagem" />
        	<button type="submit" class="btn btn-primary">Confirmar</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Realizar checkin</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Desejar confirmar checkin?
      </div>
      <div class="modal-footer">
      <c:url value="/passagem/checkin/" var="modalAction" />
        <form action="${modalAction}" method="post" method="post">
       		<input type="hidden" name="codigo" id="codigoCheckin" />
        	<button type="submit" class="btn btn-primary">Confirmar</button>
        </form>
      </div>
    </div>
  </div>
</div>