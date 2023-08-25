<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table5.jsp</title>
<style type="text/css">
	table{
		border-collapse: collapse;
						<%-- 테이블의 양쪽 간격을 공백없이 붙이는 속성--%>
	}
</style>

<script type="text/javascript">
//	window.onload=function(){ }
// 위의 방법과 같은 기능이다.
	window.addEventListener('load', function() {
		let table = document.querySelector('table');
		                 // DOM검색
		for(let i = 0; i<20; i++){
			for(let j=0; j<40; j++){
				let td = table.rows[i].cells[j];
				if(td.innerHTML == 'A'){
					setInterval(function() {
						if(td.style.visibility=='hidden')
							td.style.visibility = 'visible';
						else
							td.style.visibility = 'hidden';	
						         // 해당 태그 및 아이디의 스타일 속성을 변경하는 문법
					}, Math.random()*500)
					
				}
			}
		}
	});
</script>

<script type="text/javascript">

</script>
</head>
<body>
<h1>TABLE TAG 연습</h1>
<hr>

<table >
	<tbody>
		<%
			for(var i=0; i<20; i++){
		%>
		<tr>
			<% 
					for(var j=0; j<40; j++){
						var a = new Alpha();
			%>
						<td style="color:<%=a.getFg()%>; background:<%=a.getBg()%>; text-align:center;"><%=a.getCh()%></td>
			<%
					}
			%>
		</tr>
		<%
			}
		%>
	</tbody>
</table>
</body>
</html>