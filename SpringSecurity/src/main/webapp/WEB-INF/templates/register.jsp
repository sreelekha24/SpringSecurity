<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<title>Registration Form</title>
<!-- link rel="stylesheet" type="text/css" th:href="@{/css/registration.css}" /-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ededed;">
	<div style="background-color: #337ab7; height: 50px;"></div>
	<div class="container-fluid" style="margin-top: 30px;">

		<div class="row col-lg-4 col-lg-offset-4" style="margin-top: 40px; background-color: #fff; padding: 20px; border: solid 1px #ddd;">
			<form autocomplete="off" action="#" th:action="@{/register}" th:object="${user}" method="post" class="form-signin" role="form">
				<h3 class="form-signin-heading">Registration Form</h3>
				<div class="form-group">
					<div class="">
						<input type="text" th:field="*{name}" placeholder="Name" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<input type="text" th:field="*{lastName}" placeholder="Last Name" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<input type="text" th:field="*{email}" placeholder="Email" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<input type="password" th:field="*{password}" placeholder="Password" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<button type="submit" class="btn btn-primary btn-block">Register User</button>
					</div>
				</div>
				<span th:utext="${successMessage}"></span>
				<div class="alert alert-success alert-dismissible col-sm-12"
					th:if="${(bindingResult != null && bindingResult.getAllErrors() != null)}">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<ul th:each="data : ${bindingResult.getAllErrors()}">
						<li th:text="${data.getObjectName() + ' :: ' + data.getDefaultMessage()}"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</body>
</html>