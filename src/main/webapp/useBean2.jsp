<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean2.jsp</title>
</head>
<body>

<ol>
	<c:forEach var="i" begin="0" end="9">	
		<jsp:useBean id="a1" class="util.Alpha"/>
		<li><span style="color:${a1.fg}; background:${a1.bg };" >
			<jsp:getProperty property="ch" name="a1"/>
			<%-- getProperty 액션태그로 원하는 필드의 값만 출력할 수 있음 --%>
		</span></li>
		<c:remove var="a1"/>
	</c:forEach>
</ol>

<hr>


<%--table 태그와 JSTL, 액션 태그를 이용하여 Alpha 출력하기 --%>
<table>
<c:forEach var="i" begin="0" end="19">
	<tr>
		<c:forEach var="j" begin="0" end="39">
			<jsp:useBean id="a2" class="util.Alpha"/>
			<td style="color:${a2.fg}; background:${a2.bg }; text-align:center;">
				${a2.ch}
			</td>
			<c:remove var="a2"/>
		</c:forEach>
	</tr>
</c:forEach>
</table>
</body>
</html>