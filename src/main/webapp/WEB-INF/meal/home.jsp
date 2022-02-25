<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/home.css" rel="stylesheet" type="text/css">
<title>Home</title>
</head>
<body>
	<a href="">Contact us</a> | <a href="">Sign up</a> | <a href="">Sign in</a>
	
	<div class="container">
	<div class="row text-center">
		<h3>
			Feeling hungry?
		</h3>
		<a href=""><button id="meal">Get a random meal</button></a>
	</div>
	<c:forEach items="${apiData.meals}" var="meal">
	<div class="row">
	${meal.strMeal}
	
	</div>
	</c:forEach>
	<div id="change_meal" class=""></div>
</div>
	
	<script src="/js/home.js"></script>
</body>
</html>