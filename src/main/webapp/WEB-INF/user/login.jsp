<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<title>Insert title here</title>
</head>
<body>

	<form action="/login" method="post">
	<p class="text-danger"><c:out value="${error}" /></p>
		<p>
			<label>Email:</label>
			<input name="email"/>
		</p>
		<p>
			<label>Password:</label>
			<input name="password"/>
		</p>
		<button>Sign up</button>
	</form>
</body>
</html>