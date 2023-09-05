<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c.jsp</title>
</head>
<body>

<h1>c.jsp</h1>
<hr>

<jsp:include page="../alpha.jsp">
	<jsp:param value="8" name="line"/>
	<jsp:param value="8" name="col"/>
</jsp:include>



</body>
</html>