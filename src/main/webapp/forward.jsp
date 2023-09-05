<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward.jsp</title>
</head>
<body>

<h1>Forward</h1>
<jsp:useBean id="a1" class="util.Alpha" scope="request"/>
																	<%--   resquest scope : 참조한 Alpha 클래스의 객체를 forward한 페이지에서 사용할 수 있게끔 해준다. --%>
<jsp:forward page="result.jsp"/>

<!-- forward 액션 태그는 url이 바뀌지는 않고 result.jsp를 보여준다. -->


</body>
</html>