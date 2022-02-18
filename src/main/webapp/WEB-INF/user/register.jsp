<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Registration</title>
</head>
<body>
	<a href="/login">Already have an account? Sign up</a>
	<form:form action="/register" method="post" modelAttribute="registration">
		<p>
			<form:label path="firstName">Name:</form:label>
			<form:errors path="firstName" class="text-danger"/>
			<form:input path="firstName"/>
		</p>
		<p>
			<form:label path="email">Email:</form:label>
			<form:errors path="email" class="text-danger"/>
			<form:input path="email"/>
		</p>
		<p>
			<form:label path="password">Password</form:label>
			<form:errors path="password" class="text-danger"/>
			<form:input path="password" type="password"/>
		</p>
		<p>
			<form:label path="confirm_password">Confirm Password</form:label>
			<form:errors path="confirm_password" class="text-danger"/>
			<form:input path="confirm_password" type="password"/>
		</p>
		<button>Sign in</button>
	</form:form>
	
	<h3>Sign in with social media</h3>
	<a href="">Facebook</a>
	<a href="">Instagram</a>
	<a href="">Twitter</a>
	
</body>
</html>