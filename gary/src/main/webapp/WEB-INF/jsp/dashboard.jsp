<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script
  src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
  crossorigin="anonymous"></script>
<script type="text/javascript">
  $(function () {
    $("#saveUser").click(function () {
      window.location.href = "/saveUser";
    });
    $("#deleteUser").click(function () {
        window.location.href = "/deleteUser";
      });
    $("#updateUser").click(function () {
        window.location.href = "/updateUser";
      });
    $("#searchUser").click(function () {
        window.location.href = "/searchUser";
      });
  });
</script>
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome!!!</h2>


	<button type="button" class="btn btn-success" id="saveUser">Create Record</button><br><br/>
	<button type="button" class="btn btn-danger" id="deleteUser">Delete Record</button><br><br/>
	<button type="button" class="btn btn-warning" id="updateUser">Update Record</button><br><br/>
	<button type="button" class="btn btn-info" id="searchUser">Search Record</button><br><br/>
	<br><br/>
	<form action="/logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
<!-- 		<button type="submit">Logout</button> -->
		<button type="submit" class="btn btn-primary btn-xs" id="searchUser">Logout</button><br><br/>
	</form>
</body>
</html>