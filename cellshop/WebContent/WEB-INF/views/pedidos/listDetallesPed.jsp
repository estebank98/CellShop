<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>


	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="container theme-showcase" role="main">

			<div class="col-xs-12">
				<p class="tittles-pages">Detalles del pedido</p>
			</div>

			<c:if test="${msg !=null }">
				<div class='alert alert-success' role='alert'>${msg}</div>
			</c:if>
			
			<div class="table-responsive text-center">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Modelo</th>
						<th>Descripción</th>
						<th>Precio</th>
					</tr>

					<c:forEach var="pedidoDetalle" items="${pedidoDetalles}">
						<tr>
							<td>${pedidoDetalle.producto.modelo.nombre}</td>
							<td>${pedidoDetalle.producto.descripcion}</td>
							<td><fmt:formatNumber value="${pedidoDetalle.precio}" minFractionDigits="0" maxFractionDigits="0"/>gs</td>
						
						</tr>
					</c:forEach>
				</table>
			</div>
		
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>
	
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>