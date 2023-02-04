<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 03.02.2023
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Edit Meal</title>
</head>
<body>

<h3><a href="../index.html">Home</a></h3>
<hr>

<h3>Edit Meal</h3>

<form method="POST" action='/topjava/meals' name="addMeal">
    DateTime : <input
        type="datetime-local" name="dateTime"
        value="<fmt:formatDate pattern="MM/dd/yyyy HH:mm" value="${meal.dateTime}" />"/> <br/>
    <br/>
    Description : <input
        type="text" name="description"
        value="<c:out value="${meal.description}" />"/> <br/>
    <br/>
    Calories : <input
        type="text" name="calories"
        value="<c:out value="${meal.calories}" />"/> <br/>
    <br/>
    <input
            type="hidden" name="id"
            value="<%= request.getParameter("mealId") %>"/>
    <input
        type="submit" value="Save"/>
    <input
            type="reset" value="Cancel"/>
    <br/>
</form>

</body>
</html>
