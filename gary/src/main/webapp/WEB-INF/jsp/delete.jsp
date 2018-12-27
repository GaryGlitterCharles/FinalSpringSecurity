<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Delete</title>
<style type="text/css">
div.one {
	margin-top: 63px;
	margin-left: 40px;
}
</style>

</head>
<body>
<div class="one">
	<form:form action="" modelAttribute="deleteUser" method="post">
	<p>Customer Code<p>
	 <form:input path="CustomerCode" />
		<input type="submit" value="submit" class="btn btn-danger" />
		<br>
	</form:form>
</div>
</body>
</html>