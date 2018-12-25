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
</head>
<body>
<form:form action="" modelAttribute="getUser"
		method="post">
	Customer Code <form:input path="CustomerCode" />
	<input type="submit" value="submit" /><br>
	</form:form>
	<br><br/>
	
	  
    ${searchedUser.customerCode}<br>
    ${searchedUser.customerName}<br>
    ${searchedUser.customerAddress}<br>
	${searchedUser.pincode}<br>
	${searchedUser.email}<br>
	${searchedUser.contactNumber}<br>
	${searchedUser.registrationDate}<br>
	${searchedUser.createdBy}<br>
	${searchedUser.modifiedDate}<br>
	
	<br><br/>
	
<form:form action="updateUserDetails" modelAttribute="updateUser"
		method="post">

  	Customer Code  	<form:input path="CustomerCode"  value="${searchedUser.customerCode}" /><br>
	Customer Name 	<form:input path="CustomerName"   placeholder="${searchedUser.customerName}" /><br>
	CustomerAddress	<form:input path="CustomerAddress" placeholder="${searchedUser.customerAddress}" /><br>
	Pincode			<form:input path="Pincode"  placeholder="${searchedUser.pincode}" /><br>
	Email			<form:input path="Email"   placeholder="${searchedUser.email}"/><br>
	ContactNumber	<form:input path="ContactNumber"   placeholder="${searchedUser.contactNumber}"/><br>
	RegistrationDate<form:input path="RegistrationDate"  placeholder="${searchedUser.registrationDate}"/><br>
	CreatedBy		<form:input path="CreatedBy"  placeholder="${searchedUser.createdBy}"/><br>
	ModifiedDate	<form:input path="ModifiedDate"  placeholder="${searchedUser.modifiedDate}"/><br>
		<input type="submit" value="submit" /><br>
	</form:form>
</body>


</html>