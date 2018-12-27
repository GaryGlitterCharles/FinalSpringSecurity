<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Insert title here</title>
</head>
<body>
<table>

<c:forEach items="${allDetails}" var="element">
			<tr>
				<th>${element.customerCode}</th>
				<th>${element.customerName}</th>
				<th>${element.customerAddress}</th>
				<th>${element.pincode}</th>
				<th>${element.email}</th>
				<th>${element.contactNumber}</th>
				<th>${element.registrationDate}</th>
				<th>${element.createdBy}</th>
				<th>${element.modifiedDate}</th>

			</tr>
		</c:forEach>
</table>
</body>
</html>