<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 02.02.2023
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Meal list</title>
</head>
<body>

<h3><a href="index.html">Home</a></h3>
<hr>

<h3>Meals</h3>

<h><a href="meals/addMeal.jsp">Add Meal</a></h>
<br>
<br>

<table border="1">
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th></th>
        <th></th>
    </tr>

    <c:forEach var="mealsTo" items="${mealsTo}">
        <tr style="color:${mealsTo.excess ? 'red' : 'green'}">
            <td>
                <fmt:parseDate value="${ mealsTo.dateTime }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both"/>
                <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${ parsedDateTime }"/>
            </td>
            <td>${mealsTo.description}</td>
            <td>${mealsTo.calories}</td>
            <td>
                <a href="meals/addMeal.jsp?action=edit&mealId=<c:out value="${mealsTo.id}"/>">Update</a>
            </td>
            <td>
                <a href="meals?action=delete&mealId=<c:out value="${mealsTo.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
