<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
	crossorigin="anonymous"></script>
<style>
div.two {
	margin-left: 58px;
}

div.one {
	margin-left: 24px;
}

div.three {
	margin-left: 22px;
}
</style>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>

<script type="text/javascript">
	$(function() {
		$("#saveUser").click(function() {
			window.location.href = "/saveUser";
		});
		$("#deleteUser").click(function() {
			window.location.href = "/deleteUser";
		});
		$("#updateUser").click(function() {
			window.location.href = "/updateUser";
		});
		$("#searchUser").click(function() {
			window.location.href = "/searchUser";
		});
		$("#allDetails").click(function() {
			window.location.href = "/allDetails";
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
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
	

	<div>
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
	<br><br/>
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