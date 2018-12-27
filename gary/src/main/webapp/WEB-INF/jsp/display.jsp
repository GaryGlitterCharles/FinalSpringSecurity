<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	
	
<link href="css/display.css" rel="stylesheet">
<script src="js/button.js"></script>

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