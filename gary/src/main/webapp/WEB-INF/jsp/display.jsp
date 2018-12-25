<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search Customer</title>
</head>
<body>
<p>Search by customer code or name<p><br><br/>
<form:form action="" modelAttribute="getUser" method="post">
	Customer Code <form:input path="CustomerCode" /><br><br/>
	Customer Name <form:input path="CustomerName" /><br><br/>
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
  
  	
    ${searchedUserName.customerCode}<br>
    ${searchedUserName.customerName}<br>
    ${searchedUserName.customerAddress}<br>
	${searchedUserName.pincode}<br>
	${searchedUserName.email}<br>
	${searchedUserName.contactNumber}<br>
	${searchedUserName.registrationDate}<br>
	${searchedUserName.createdBy}<br>
	${searchedUserName.modifiedDate}<br>
	<br><br/>
<a href="/dashboard">DashBoard</a>
</body>
</html>