<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Welcome to Registration Page:</h1>
	<form:form modelAttribute="emp" action="save" method="get">
	<form:hidden path="eid"/><br>
	<label>First Name: </label>
	<form:input path="firstname"/><br><br>
	<label>Last Name: </label>
	<form:input path="lastname"/><br><br>
	<label>email </label>
	<form:input path="email"/><br><br>
	 <label>Dob </label>
	<input type="date" name="dob"><br><br>
	<label>Address </label>
	<form:textarea path="address"/><br><br>
	<label>Select Gender </label><br>
	<label>Male </label>
	<form:radiobutton path="gender" value="male"/><br>
	<label>Female </label>
	<form:radiobutton path="gender" value="female"/><br>
	<label>Other </label>
	<form:radiobutton path="gender" value="other"/><br><br>
	<label>Department</label>
	<form:select path="dept">
	<form:option value="FrontEnd">Front End</form:option>
	<form:option value="backend">Back End</form:option>
	<form:option value="testing">Testing</form:option>
	<form:option value="database">Data Base</form:option>
	</form:select><br><br>
	<label>Salary</label>
	<form:input path="salary"/><br><br>
	<button>submit</button>
	</form:form>
	
</body>
</html>