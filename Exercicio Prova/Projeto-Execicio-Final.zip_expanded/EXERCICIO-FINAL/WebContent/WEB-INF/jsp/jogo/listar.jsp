<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Listagem de Jogos">
	<h1>Lista de Jogos</h1>
	
	<table class="table">
		<tr>
			<th>Nome</th>
			<th>Data de lançamento</th>
			<th>Disponível</th>
			<th>Plataforma</th>
			<th>Gênero</th>
		</tr>
		<c:forEach items="${jogos}" var="j">
			<tr>
				<td>${j.nome}</td>
				<td><fmt:formatDate value="${j.dataLancamento.time}" pattern="dd/MM/yyyy" /></td>
				<td>${(j.disponivel) ? "Disponível" : "Não disponível"}</td>
				<td>${j.plataforma}</td>
				<td>${j.genero.nome}</td>
				<c:if test="${!j.disponivel}">
				<td>
						<a href="<c:url value="/jogo/atualizar/${j.codigo}" />" class="btn btn-primary">Atualizar</a>
				</td>
				<td>
					<button title="Remover" type="button" class="btn btn-danger" onclick="codigoExcluir.value = ${j.codigo}"
						data-toggle="modal" data-target="#exampleModal">
						Remover
					</button>
				</td>
					</c:if>
				<td>
					<c:url value="/jogo/alterarStatus/${j.codigo}" var="action"/>
					<form:form method="post" action="${action}">
						<button title="Alterar status" type="submit" class="btn btn-danger">
							Alterar disponibilidade
						</button>
					</form:form>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<!-- Modal Excluir-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja realmente apagar o jogo?
      </div>
      <div class="modal-footer">
      	<c:url value="/jogo/excluir" var="acao"/>
      	<form action="${acao}" method="post">
      		<input type="hidden" name="codigo" id="codigoExcluir">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
	        <button type="submit" class="btn btn-danger">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>
	
	
</tags:template>