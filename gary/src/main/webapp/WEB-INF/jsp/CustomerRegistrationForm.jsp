<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<script>
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

<title>Login</title>
</head>
<body>
	<form:form action="" modelAttribute="saveUser"
		method="post">
  	Customer Code  	<form:input path="CustomerCode" /><br>
	Customer Name 	<form:input path="CustomerName"  onblur="validatename(this);" /><br>
	CustomerAddress	<form:input path="CustomerAddress"  /><br>
	Pincode			<form:input path="Pincode"  onblur="validatepincode(this);" /><br>
	Email			<form:input path="Email" onblur="validateEmail(this);" /><br>
	ContactNumber	<form:input path="ContactNumber" /><br>
	<body onload="addDate();">
	RegistrationDate<form:input path="RegistrationDate" id="datetext"/><br>
	</body>
	CreatedBy		<form:input path="CreatedBy" /><br>
	ModifiedDate	<form:input path="ModifiedDate" /><br>
		<input type="submit" value="submit" /><br>
	</form:form>



</body>
</html>