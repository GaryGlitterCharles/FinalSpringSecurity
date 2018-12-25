<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<script
  src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
  crossorigin="anonymous"></script>
<script type="text/javascript">
  $(function () {
    $("#createAccount").click(function () {
      window.location.href = "/register";
    });
  });
</script>
</head>
<body>
<h1>Welcome!!!</h1>
<br><br/>
 <button type="button" class="btn" id="createAccount">Create Account</button>
</body>
</html>