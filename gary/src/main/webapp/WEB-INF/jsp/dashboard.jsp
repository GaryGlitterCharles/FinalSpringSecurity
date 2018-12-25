<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome!!!</h2>

	<a href="/saveUser">Create new Record</a><br><br/>
	<a href="/deleteUser">Delete a record</a><br><br/>
	<a href="/updateUser">update a record</a><br><br/>
	<a href="/searchUser">search a record</a><br><br/>
	<br><br/>
	<form action="/logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit">Logout</button>
	</form>
</body>
</html>