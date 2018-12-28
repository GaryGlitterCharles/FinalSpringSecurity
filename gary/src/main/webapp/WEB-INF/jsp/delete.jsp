<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>

<title>Delete</title>
<style type="text/css">
div.one {
	margin-top: 63px;
	margin-left: 40px;
}
</style>

</head>
<body background="image/img2.jpg">
<div class="one">
	<form:form action="" modelAttribute="deleteUser" method="post">
	<p><b>Customer Code</b><p>
	 <form:input path="CustomerCode" />
		<input type="submit" value="submit" class="btn btn-danger" />
		<br>
	</form:form>
</div>
</body>
</html>