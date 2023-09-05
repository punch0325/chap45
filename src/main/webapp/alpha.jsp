<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%--useBean3.jsp에서 include하기 위한 파일 --%>
<title>alpha.jsp</title>


<c:if test="${!empty param.line}">
		<%-- if test="조건식" ▶ 해당 조건식의 뜻 : 파라미터 line의 값이 비어있지 않으면 true --%>
	<c:set var="line" value="${param.line}"/>
	<%-- set JSTL 태그 : 변수 생성을 위한 태그. var="변수이름" value="데이터" --%>
</c:if>

<c:if test="${!empty param.col}">
	<c:set var="col" value="${param.col}"/>
</c:if>



<table>
	<c:forEach var="i" begin="1" end="${line}">
		<tr>
			<c:forEach var="j" begin="1" end="${col}">
				<jsp:useBean id="a2" class="util.Alpha"/>
				<td style="color:${a2.fg}; background:${a2.bg }; text-align:center;">
					${a2.ch}
				</td>
			<c:remove var="a2"/>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
<%-- useBean3.jsp에서 param태그로 넘겨 받은 
		  line과 col값을 사용하여 Alpha객체를 테이블 태그로 출력 --%>

