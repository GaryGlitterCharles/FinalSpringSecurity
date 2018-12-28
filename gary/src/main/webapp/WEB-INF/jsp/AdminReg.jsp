<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/cusReg.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Admin Register</title>
</head>
<body>
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