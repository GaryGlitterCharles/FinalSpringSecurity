<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="css/cusReg.css" rel="stylesheet">
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
<title>Insert title here</title>
</head>
<body background="image/img2.jpg">
	<form:form action="" method="post" modelAttribute="saveUser" >

		<h1>Sign Up</h1>

		<fieldset>

			<label for="Customer Code">Customer Code:</label>
			<form:input path="CustomerCode" /><br>
			
			<label for="Customer Name">Customer Name:</label> 
			<form:input path="CustomerName"  onblur="validatename(this);" />
			
			
			 <label for="CustomerAddress">CustomerAddress:</label> 
			<form:input path="CustomerAddress" />
			 
			 
			  <label for="Pincode">Pincode:</label>
			  <form:input path="Pincode"  onblur="validatepincode(this);" /> 
			  
			  
			
			
			 <label for="ContactNumber">ContactNumber:</label> 
			<form:input path="ContactNumber" />
			
			<label for="Email">Email:</label> 
			<form:input path="Email" onblur="validateEmail(this);" />
			
			  <label for="RegistrationDate">RegistrationDate:</label>
			 <body onload="addDate();">
			<form:input path="RegistrationDate" id="datetext" readonly="text" /> 
			</body>
			
			<label for="CreatedBy">CreatedBy:</label>
			<form:input path="CreatedBy" />
			
			 
			  <label for="ModifiedDate">ModifiedDate:</label>
			   <form:input path="ModifiedDate" />


		</fieldset>

		
		<button type="submit">Sign Up</button>
	</form:form>

</body>
</html>