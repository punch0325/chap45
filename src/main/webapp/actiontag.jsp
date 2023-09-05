<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%-- JSTL 태그 라이브러리 사용 선언문 
		  스크립틀릿 사용을 지양하기 위해 만들어졌다. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actiontag.jsp</title>
</head>
<body>

<%-- JSTL 태그는 위에 라이브러리 사용 선언문에서 정의한 prefix 속성의 값으로 시작한다. 
          이 부분은 개발자가 원하는 대로 정의 할 수 있지만 보통 c를 쓴다. 만약 x로 했으면 x:forEach가 됐을 것 --%>
<c:forEach var="i" begin="1" end="10">
<span>${i}</span><br>
</c:forEach>
<hr>

<%-- 액션태그. 액션태그는 별다른 라이브러리 선언문이 필요없다. --%>
<jsp:useBean id="alpha1" class="util.Alpha" />
<!-- alpha1이라는 자바 빈 객체를 선언하여 Alpha클래스를 참조함 -->
<h2>${alpha1}</h2>
<hr>


<u1>
<c:forEach var="i" begin="0" end="5">
	<jsp:useBean id="alpha2" class="util.Alpha"/>
	<li>${alpha2}</li>
</c:forEach>
<!-- useBean으로 만든 객체는 반복문으로 돌려도 새로운 랜덤 데이터를 반환하지 않음
		 그러므로, 랜덤 데이터를 반환하고 싶으면 아래의 코드와 같이 remove JSTL 태그를 이용하여 데이터를 지워주어야 함-->
</u1>
<hr>


<u1>
<c:forEach var="i" begin="0" end="5">
	<jsp:useBean id="alpha3" class="util.Alpha"/>
	<li>${alpha3}</li>
	<c:remove var="alpha3"/>
</c:forEach>
</u1>
</body>
</html>