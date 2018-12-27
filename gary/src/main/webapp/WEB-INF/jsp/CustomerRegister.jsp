<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Insert title here</title>
</head>
<body>
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
			<form:input path="RegistrationDate" id="datetext"/> 
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