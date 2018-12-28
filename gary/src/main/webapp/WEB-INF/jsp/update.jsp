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
<link href="css/cusReg.css" rel="stylesheet">

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>



<link href="css/table.css" rel="stylesheet">
<script src="js/cusReg.js"></script>
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
<body background="image/img2.jpg">
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