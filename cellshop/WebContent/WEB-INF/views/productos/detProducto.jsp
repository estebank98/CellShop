<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>
	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="content-page">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12 text-center">
						<p class="tittles-pages">Detalles del producto</p>
					</div>

					<div class="col-xs-12 text-center">
						<div class="container">
							<div class="col-xs-12 col-sm-6 col-md-3 center">
								<div class="thumbnail thumbnail-content-phones">
									<div class="img-products">
										<img
											src="${urlPublic}/assets/img/celulares/${produSele.imagen}"
											alt="prod-icon" class="img-responsive">
									</div>
									<div class="caption" role="menu" id="producto" name="producto">
										<h3 class="text-align-center">${produSele.modelo.nombre}</h3>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">${produSele.descripcion}</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Precio<br></b>
										<fmt:formatNumber value="${produSele.precio}"
											minFractionDigits="0" maxFractionDigits="0" />
										gs
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12 text-center">
						<div class="container">
							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Memoria Ram<br></b> ${produSele.memoria.descripcion}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Almacenamiento<br></b>
										${produSele.almacenamiento.descripcion}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Color<br></b> ${produSele.color.nombre}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Resolución<br></b> ${produSele.modelo.resolucion}
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12 text-center">
						<div class="container">

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Peso<br></b> ${produSele.modelo.peso}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Bateria<br></b> ${produSele.modelo.bateria}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Dimensiones<br></b> ${produSele.modelo.dimensiones}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Pantalla<br></b> ${produSele.modelo.pantalla}gs
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12 text-center">
						<div class="col-xs-12 col-sm-6 col-md-3 center">
							<div class="thumbnail thumbnail-content-phones">
								<p class="text-justify center">
									<b>Agregar al carrito</b>
								</p>
								<p class="text-align-center">
									<c:if test="${usuario != null }">
										<a
											href="${urlRoot}carrito/${usuario.name}/agregar/${produSele.prod_id}"
											class="btn btn-success" role="button"
											title="Agregar al carrito"> <span
											class="glyphicon glyphicon-shopping-cart"></span>
										</a>
									</c:if>
									<c:if test="${usuario == null }">
										<a href="${urlRoot}login/index" class="btn btn-success"
											role="button" title="Agregar al carrito"> <span
											class="glyphicon glyphicon-shopping-cart"></span>
										</a>
									</c:if>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../includes/footer.jsp"></jsp:include>
	
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>