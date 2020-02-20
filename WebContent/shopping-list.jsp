<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item List</title>
</head>
<body>
<table>
<c:forEach items="${requestScope.allItems}" var="currentitem">
<tr>
	<td><input type="radio" name="id" value="${currentitem.id}"></td>
	<td>${currentitem.store}</td>
	<td>${currentitem.item}</td>
</tr>
</c:forEach>
</table>
<form method="post" action="navigationServlet">
	<!--This form has to be wrapped around the table above.  No data is being passed over. --> 
	<!--Why would you have an empty table tag?? -->
<table>
...
</table>
<input type="submit" value="edit" name="doThisToItem">
<input type="submit" value="delete" name="doThisToItem">
<input type="submit" value="add" name="doThisToItem">
</form>
</body>
</html>
