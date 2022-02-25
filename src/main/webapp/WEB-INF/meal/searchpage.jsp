<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="col">

		<c:forEach items="${apiData.areas.meals}" var="area">
		<%-- <h1>${area.strMeal}</h1>
		${area.strMealThumb}
		${area.idMeal}
		 --%>
	
		</c:forEach>

		
</div>
</body>
</html>