<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect.jsp</title>
</head>
<body>

<h1>Redirect Practice</h1>
<hr>

<c:redirect url="useBean3.jsp"></c:redirect>
<!-- redirect JSTL 태그는 url까지도 바뀐다. -->

</body>
</html>