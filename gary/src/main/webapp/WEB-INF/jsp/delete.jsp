<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
	<form:form action="" modelAttribute="deleteUser"
		method="post">
	Customer Code <form:input path="CustomerCode" />
	<input type="submit" value="submit" /><br>
	</form:form>
</body>
</html>