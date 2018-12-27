<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/cusReg.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
 <h2>Register For An Account</h2>
  
  <form:form action="" method="post" modelAttribute="user">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    
    <label for="name">Name:</label>
	<form:input path="name" /><br>
	
	<label for="username">UserName:</label>
	<form:input path="username" /><br>
	
	
	<label for="password">Password:</label>
	<form:input path="password" /><br>		
			
			
   
    
    <form:button>submit</form:button>
  </form:form>
</body>
</html>