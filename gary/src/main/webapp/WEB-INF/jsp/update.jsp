<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*, *:before, *:after {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	font-family: 'Nunito', sans-serif;
	color: #384047;
}

form {
	max-width: 300px;
	margin: 10px auto;
	padding: 10px 20px;
	background: #f4f7f8;
	border-radius: 8px;
}

h1 {
	margin: 0 0 30px 0;
	text-align: center;
}

input[type="text"], input[type="password"], input[type="date"], input[type="datetime"],
	input[type="email"], input[type="number"], input[type="search"], input[type="tel"],
	input[type="time"], input[type="url"], textarea, select {
	background: rgba(255, 255, 255, 0.1);
	border: none;
	font-size: 16px;
	height: auto;
	margin: 0;
	outline: 0;
	padding: 15px;
	width: 100%;
	background-color: #e8eeef;
	color: #8a97a0;
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
	margin-bottom: 30px;
}

input[type="radio"], input[type="checkbox"] {
	margin: 0 4px 8px 0;
}

select {
	padding: 6px;
	height: 32px;
	border-radius: 2px;
}

button {
	padding: 19px 39px 18px 39px;
	color: #FFF;
	background-color: #4bc970;
	font-size: 18px;
	text-align: center;
	font-style: normal;
	border-radius: 5px;
	width: 100%;
	border: 1px solid #3ac162;
	border-width: 1px 1px 3px;
	box-shadow: 0 -1px 0 rgba(255, 255, 255, 0.1) inset;
	margin-bottom: 10px;
}

fieldset {
	margin-bottom: 30px;
	border: none;
}

legend {
	font-size: 1.4em;
	margin-bottom: 10px;
}

label {
	display: block;
	margin-bottom: 8px;
}

label.light {
	font-weight: 300;
	display: inline;
}

.number {
	background-color: #5fcf80;
	color: #fff;
	height: 30px;
	width: 30px;
	display: inline-block;
	font-size: 0.8em;
	margin-right: 4px;
	line-height: 30px;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2);
	border-radius: 100%;
}

@media screen and (min-width: 480px) {
	form {
		max-width: 480px;
	}
}
</style>
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
function validateEmail(emailField){
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (reg.test(emailField.value) == false) 
    {
        alert('Invalid Email Address');
        return false;
    }

    return true;

}
function validatename(nameField){
    var reg = /^[A-Za-z\s.\(\)0-9]{3,}$/;

    if (reg.test(nameField.value) == false) 
    {
        alert('Invalid name');
        return false;
    }
	return true;

}
function validatepincode(pinField){
    var reg = /^(\d{4}|^\d{6})$/;

    if (reg.test(pinField.value) == false) 
    {
        alert('Invalid pincode');
        return false;
    }
	return true;

}
</script>
<script type="text/javascript">
function addDate(){
	date = new Date();
	var month = date.getMonth()+1;
	var day = date.getDate();
	var year = date.getFullYear();

	if (document.getElementById('datetext').value == ''){
	document.getElementById('datetext').value = day + '-' + month + '-' + year;
	}
	}
</script>
<script type="text/javascript">
	$(function() {
		$("#dashboard").click(function() {
			window.location.href = "/dashboard";
		});

	});
</script>
</head>
<body>
<form:form action="" modelAttribute="getUser"
		method="post">
	Customer Code <form:input path="CustomerCode" />
	<input type="submit" value="submit" class="btn btn-success" /><br>
	</form:form>
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
	
	<br><br/>
	
<form:form action="updateUserDetails" modelAttribute="updateUser"
		method="post">
<h1>Update Details</h1>

		<fieldset>

			<label for="Customer Code">Customer Code:</label>
			<form:input path="CustomerCode"   /><br>
			
			<label for="Customer Name">Customer Name:</label> 
			<form:input path="CustomerName"  onblur="validatename(this);"  value="${searchedUser.customerName}" />
			
			
			 <label for="CustomerAddress">CustomerAddress:</label> 
			<form:input path="CustomerAddress"  value="${searchedUser.customerAddress}"/>
			 
			 
			  <label for="Pincode">Pincode:</label>
			  <form:input path="Pincode"  onblur="validatepincode(this);" value="${searchedUser.pincode}" /> 
			  
			  
			
			
			 <label for="ContactNumber">ContactNumber:</label> 
			<form:input path="ContactNumber" value="${searchedUser.contactNumber}"/>
			
			<label for="Email">Email:</label> 
			<form:input path="Email" onblur="validateEmail(this);"  value="${searchedUser.email}"/>
			
			  <label for="RegistrationDate">RegistrationDate:</label>
			 <body onload="addDate();">
			<form:input path="RegistrationDate" id="datetext"/> 
			</body>
			
			<label for="CreatedBy">CreatedBy:</label>
			<form:input path="CreatedBy" value="${searchedUser.createdBy}"/>
			
			 
			  <label for="ModifiedDate">ModifiedDate:</label>
			   <form:input path="ModifiedDate"  value="${searchedUser.modifiedDate}"/>


		</fieldset>

		
		<button type="submit">Update </button>
	</form:form><br><br/>
	<button type="button" class="btn btn-info" id="dashboard">Go to DashBoard</button>
</body>


</html>