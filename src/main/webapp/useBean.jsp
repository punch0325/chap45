<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean.jsp</title>
</head>
<body>
<%
	var alpha1 = new Alpha();
	out.println(alpha1); // 자바로 웹브라우저에서 데이터를 출력할 때 쓰는 print문
%>
<hr>

<%-- useBean 액션태그로 alpha2객체를 만들어 Alpha 클래스의 필드 값을 각각 출력 --%>
<jsp:useBean id ="alpha2" class="util.Alpha"/>
[${alpha2.line},${alpha2.col},${alpha2.fg},${alpha2.bg},${alpha2.ch}]
<hr>


<%-- useBean 액션태그로 alpha3객체를 만든 후 setProperty 액션태그로 Alpha의 필드값을 대입하여 출력 --%>
<jsp:useBean id ="alpha3" class="util.Alpha"/>
<jsp:setProperty property="line" name="alpha3" value="10"/>
<jsp:setProperty property="col" name="alpha3" value="20"/>
<jsp:setProperty property="fg" name="alpha3" value="Black"/>
<jsp:setProperty property="bg" name="alpha3" value="Red"/>
<jsp:setProperty property="ch" name="alpha3" value="G"/>
${alpha3}
</body>
</html>