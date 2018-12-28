<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="css/style.css" rel="stylesheet">



</head>
<body>
<div class="login-page">
 <form action="" method="post" class="form">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
   
        <legend>Please Login</legend>
        <!-- use param.error assuming FormLoginConfigurer#failureUrl contains the query parameter error -->
        <c:if test="${param.error != null}">
            <div>
                Failed to login.
                <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
                  Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
                </c:if>
            </div>
        </c:if>
        <!-- the configured LogoutConfigurer#logoutSuccessUrl is /login?logout and contains the query param logout -->
        <c:if test="${param.logout != null}">
            <div>
                You have been logged out.
            </div>
        </c:if>
        <p>
        <label for="username">Username</label>
        <input type="text" id="username" name="username"/>
        </p>
        <p>
        <label for="password">Password</label>
        <input type="password" id="password" name="password"/>
        </p>
        <!-- if using RememberMeConfigurer make sure remember-me matches RememberMeConfigurer#rememberMeParameter -->
        <p>
        <label for="remember-me">Remember Me?</label>
        <input type="checkbox" id="remember-me" name="remember-me"/>
        </p>
       <div>
        <button type="submit" class="btn">Log in</button>
       
      </div>
    
 </form>
 </div>





</body>
</html>