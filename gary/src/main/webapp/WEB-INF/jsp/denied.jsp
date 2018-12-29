<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>403</title>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="js/button.js"></script>
<link href="css/table.css" rel="stylesheet">
</head>
<body>
<body background="image/new.jpg">
	
	<form action="/logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<!-- 		<button type="submit">Logout</button> -->
		<div style=" margin-left: 602px; margin-top: 366px;">

			<button type="submit"  class="btn btn-primary btn-lg" id="searchUser">Go back to login page</button>
			<br> <br />
		</div>
	</form>
</body>
</body>
</html>