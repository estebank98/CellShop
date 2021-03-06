<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>CellShop | Bienvenido</title>
	<spring:url value="/resources" var="urlPublic" />
	<spring:url value="/" var="urlRoot" />
	
	<!-- Bootstrap 2014 -->
	<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
	<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- Style CSS -->
	<link rel="stylesheet" href="${urlPublic}/css/style.css">
	
	<!-- Icon -->
	<link rel="Shortcut Icon" type="image/x-icon"
		href="${urlPublic}/assets/icons/shortcut-icon.ico" />
	
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Dosis"
		rel="stylesheet">
	
	<!-- Social Icons -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>

	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="container theme-showcase admin" role="main">

			<hr class="featurette-divider">

			<img src="${urlPublic}/assets/img/login.png" width="136" height="136"
				class="center">

			<div class="col-xs-12">
				<p class="tittles-pages">Inicia sesión en nuestra web</p>
			</div>

			<!--<form class="form-signin" action="${urlRoot}login" method="post">

				<c:if test="${param.error!= null}">
					<img src="${urlPublic}/assets/img/error.png" width="48" height="48"
						class="center">
					<h4 class="form-signin-heading" style="color: red">Acceso
						denegado</h4>
				</c:if>

				<label for="username" class="sr-only">Usuario</label> <input
					type="text" id="username" name="username" class="form-control"
					placeholder="Usuario" required autofocus><br>
					
				<label for="password" class="sr-only">Contraseña</label> <input
					type="password" id="password" name="password" class="form-control"
					placeholder="Password" required> <input type="hidden"
					name="${_csrf.parameterName}" value="${_csrf.token}" /><br><br>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			</form>-->

			<form class="form-signin" action="j_security_check" method="post">
				<h4 class="form-signin-heading" style="color: red">La cuenta con la que intentas acceder no existe</h4>
				<h3 class="form-signin-heading">CellShop</h3>
				<label for="j_username" class="sr-only">Usuario</label> <input
					type="text" id="j_username" name="j_username" class="form-control"
					placeholder="Usuario" required autofocus> <label
					for="j_password" class="sr-only">Contraseña</label> <input
					type="password" id="j_password" name="j_password"
					class="form-control" placeholder="Password" required>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			</form>

			<hr class="featurette-divider">

		</div>

	<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>

		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>

</body>