<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean3.jsp</title>
</head>
<body>
<h1>Alpha1</h1>
<hr>
<jsp:include page="alpha.jsp">
	<jsp:param value="5" name="line"/>
	<jsp:param value="5" name="col"/>
</jsp:include>


<br><br><br><br>


<h1>Alpha2</h1>
<hr>
<jsp:include page="alpha.jsp">
	<jsp:param value="10" name="line"/>
	<jsp:param value="10" name="col"/>
</jsp:include>


<!-- 	include 액션 태그 : 해당 페이지를 참조하여 그 페이지의 실행결과를 불러옴 -->
<!-- 	param 액션 태그 : include나 forward 액션 태그 사용 시 해당 페이지에 파라피터 값을 넘겨줌 -->


</body>
</html>