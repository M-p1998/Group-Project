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
	<hr>
	<div class="container">
	<div class="row">
	<form action="/searchByCountry" method="get">
	<select name="country">
		<c:forEach items="${apiAreas.areas}" var="area">
		<option value="${area.strArea}">${area.strArea}</option>
		</c:forEach>
		
		</select>
		<button type ="submit">SUBMIT</button>
		</form>
	</div>
	
	
	<div class="row text-center">
		<h3>
			Feeling hungry?
		</h3>

		<a href="/details/${getOne.id}"><button id="meal">Get a random meal</button></a>

	</div>
	<c:forEach items="${apiData.meals}" var="meal">
	<div class="row">
	${meal.strMeal}
	${meal.strDrinkAlternate}
	${meal.strCategory}
	${meal.strArea}
	${meal.strInstructions}
	${meal.strMealThumb}
	${meal.strTags}
	<a href="${meal.strYoutube}" target="_blank">Watch on YouTube</a>
	<iframe width="420" height="315"
src="https://www.youtube.com/embed/${meal.strYoutubeVideoID}">
</iframe>
	

	</div>
	</c:forEach>
	<form action="/searchByCountry" method="get">
	<input name="country">
	<button type ="submit">SUBMIT</button>
	</form>
	
	<div id="change_meal" class=""></div>
</div>
	
	<script src="/js/home.js"></script>
</body>
</html>