<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=ISO-8859-
1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/boo
tstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Products</title>
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

.centered {
	margin-top: 300px;
}

</style>
</head>
<body>
	<div class="centered">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Please sign in</h3>
						</div>
						<div class="panel-body">
							<c:if test="${not empty error}">
								<div class="alert alert-danger">
									<spring:message
										code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
									<br />
								</div>
							</c:if>
							<form action="<c:url value= "/j_spring_security_check"></c:url>"
								method="post">
								<fieldset>
									<div class="form-group">
										<input class="form-control" placeholder="User Name"
											name='j_username' type="text">
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Password"
											name='j_password' type="password" value="">
									</div>
									<input class="btn btn-lg btn-success btn-block" type="submit"
										value="Login">
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>