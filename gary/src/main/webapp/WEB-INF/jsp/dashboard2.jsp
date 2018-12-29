<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>


<script src="js/button.js"></script>
<link href="css/table.css" rel="stylesheet">

<title>Dashboard</title>


</head>
<body background="image/img2.jpg">
	<div class="three">

		<h2>Welcome!!!</h2>
	</div>


	<div class="two">
		<br> <br />
		<button type="button" class="btn btn-success" id="saveUser">Create
			Record</button>
		<button type="button" class="btn btn-danger" id="deleteUser">Delete
			Record</button>
		<button type="button" class="btn btn-warning" id="updateUser">Update
			Record</button>
		<button type="button" class="btn btn-info" id="searchUser">Search
			Record</button>
	</div>
	<br>
	<br />


	<div class="four">
		<button type="button" class="btn btn-warning" id="allDetails">View
			all record</button>
	</div>



	<div>
		<table>

			<c:forEach items="${allDetails}" var="element">

				<tr>
					<th>${element.customerCode}</th>
					<th>${element.customerName}</th>
					<th>${element.customerAddress}</th>
					<th>${element.pincode}</th>
					<th>${element.email}</th>
					<th>${element.contactNumber}</th>
					<th>${element.registrationDate}</th>
					<th>${element.createdBy}</th>
					<th>${element.modifiedDate}</th>

				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<br />
	<form action="/logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<!-- 		<button type="submit">Logout</button> -->
		<div class="one">

			<button type="submit" class="btn btn-primary btn-xs" id="searchUser">Logout</button>
			<br> <br />
		</div>
	</form>
</body>
</html>