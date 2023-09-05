<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calcForm.jsp</title>
</head>
<body>

<h1>Calculator Form</h1>
<hr>
<form action="calc.jsp">
	<input name="n1">
	<select name="op">
		<option>+</option>
		<option>-</option>
		<option>/</option>
		<option>*</option>
	</select>
	<input name="n2">
	<input type="submit" value="계산">
</form>



	


<%-- <jsp:getProperty property="n1" name="calc"/> --%>
<%-- <jsp:getProperty property="op" name="calc"/> --%>
<%-- <jsp:getProperty property="n2" name="calc"/> --%>
</body>
</html>