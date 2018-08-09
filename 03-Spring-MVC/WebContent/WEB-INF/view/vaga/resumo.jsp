<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template title="Resultado do Cadastro">
<jsp:body>
	<jsp:attribute name="scripts">
		<script>
			$(function() {
				$('.register-return').slideDown(3000);
				setTimeout(function() {
					$('.register-return').slideUp(1000);
				}, 5000);
			});
		</script>
	</jsp:attribute>
	<jsp:body>
	<!-- Tudo que for colocado aqui dentro vai ser inserido no template no doBody do template -->
	<div style="margin-top: 25px;"
			class="alert alert-success register-return" role="alert">
			<strong>${msg}</strong>
	</div>
	<div>
	<h1 class="display-4">Dados da Vaga</h1>
		<p>	${v.titulo}</p>
		<p>${v.salario}</p>
		<p>${v.tipo}</p>
		<p>${v.beneficios ? "Sim" : "Não"}</p>
		<p>${v.descricao}</p>
	</div>
</jsp:body>
</tags:template>