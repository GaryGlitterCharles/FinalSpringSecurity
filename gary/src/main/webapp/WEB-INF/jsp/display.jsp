<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<style type="text/css">
div.one {
	margin-top: 63px;
	margin-left: 40px;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#dashboard").click(function() {
			window.location.href = "/dashboard";
		});

	});
</script>
<title>search Customer</title>
</head>
<body>
<p>Search by customer code or name<p><br><br/>
<div class="one">
<form:form action="" modelAttribute="getUser" method="post">
	Customer Code <form:input path="CustomerCode"  /><br><br/>
	Customer Name <form:input path="CustomerName"  /><br><br/>
	<input type="submit" value="submit" class="btn btn-success"/><br>
	</form:form>
</div>
	<br><br/>
  <div>
		<table>

			
				<tr>
					<th>${searchedUser.customerCode}</th>
					<th>${searchedUser.customerName}</th>
					<th>${searchedUser.customerAddress}</th>
					<th>${searchedUser.pincode}</th>
					<th>${searchedUser.email}</th>
					<th>${searchedUser.contactNumber}</th>
					<th>${searchedUser.registrationDate}</th>
					<th>${searchedUser.createdBy}</th>
					<th>${searchedUser.modifiedDate}</th>

				</tr>
			
		</table>
	</div>
   <div>
		<table>

			
				<tr>
					<th>${searchedUserName.customerCode}</th>
					<th>${searchedUserName.customerName}</th>
					<th>${searchedUserName.customerAddress}</th>
					<th>${searchedUserName.pincode}</th>
					<th>${searchedUserName.email}</th>
					<th>${searchedUserName.contactNumber}</th>
					<th>${searchedUserName.registrationDate}</th>
					<th>${searchedUserName.createdBy}</th>
					<th>${searchedUserName.modifiedDate}</th>

				</tr>
			
		</table>
	</div>
  
  	
   
	<br><br/>

	<button type="button" class="btn btn-info" id="dashboard">Go to DashBoard</button>
</body>
</html>