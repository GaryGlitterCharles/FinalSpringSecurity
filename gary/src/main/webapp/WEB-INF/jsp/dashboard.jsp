<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>

<script src="js/button.js"></script>
<title>Insert title here</title>
</head>
<body background="image/img2.jpg">
	<h2>Welcome!!!</h2>


	<button type="button" class="btn btn-success" id="saveUser">Create
		Record</button>
	<br>
	<br />
	<button type="button" class="btn btn-danger" id="deleteUser">Delete
		Record</button>
	<br>
	<br />
	<button type="button" class="btn btn-warning" id="updateUser">Update
		Record</button>
	<br>
	<br />
	<button type="button" class="btn btn-info" id="searchUser">Search
		Record</button>
	<br>
	<br />
	<br>
	<br />
	<form action="/logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<!-- 		<button type="submit">Logout</button> -->
		<button type="submit" class="btn btn-primary btn-xs" id="searchUser">Logout</button>
		<br>
		<br />
	</form>
</body>
</html>