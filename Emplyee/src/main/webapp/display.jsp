<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	I am in display.jsp
	<br>
	<br>
	<button><a href="http://localhost:8080/add">AddEmplyoee</a></button>
	<table border="1">
	<tr>
	<th>first Name</th>
	<th>last Name</th>
	<th>email</th>
	<th>address</th>
	<th>dob</th>
	<th>gender</th>
	<th>salary</th>
	<th>edit</th>
	<th>delete</th>
	</tr>
	<c:forEach var="emp" items="${list}">
		 
	 <tr>
	<th> ${emp.firstname}</th>
	<th> ${emp.lastname}</th>
	<th>${emp.email}</th>
	<th> ${emp.address}</th>
	<th> ${emp.dob}</th>
	<th>${emp.gender}</th>
	<th>${emp.salary}</th>
	<th><a href="http://localhost:8080/${emp.eid }">edit</a></th>
	<th><a href="http://localhost:8080/delete/${emp.eid }">delete</a></th>
	</tr>
	
	</c:forEach>
	</table>
	<br><br>

</body>
</html>