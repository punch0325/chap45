<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select.jsp</title>
<script type="text/javascript">
// let select = document.querySelector('select')

// select.options[0]  ▶ 0번 인덱스(첫번째 옵션)의 형태를 가져옴 ex) <option>A</option>
// select.options[0].innerText ▶ 0번 인덱스의 데이터를 가져옴 ex) 'A'

// select.selectedIndex ▶ 지금 선택되어 있는 옵션의 인덱스 번호를 가져옴

// select.options[select.selectedIndex].value ▶ 지금 선택되어 있는 옵션의 인덱스 번호를 찾아 그 데이터를 가져옴
	
	
	window.onload=function(){
		let start = document.querySelectorAll('button')[0];
		let stop = document.querySelectorAll('button')[1];
		let select = document.querySelector('select');
		let h2 = document.querySelector('h2');
		
		stop.disabled=true;
	           <!--disabled : true면 클릭 금지, false면 클릭 가능-->
		

		start.onclick = function(){
			start.disabled=true;
			select.disabled=true;
			stop.disabled=false;
			
			let alpha = select.options[select.selectedIndex].value
			console.log(alpha);
			
			h2.innerText=alpha+"선택";
			
	
			console.log("start...")
		}
		
		
		stop.onclick = function(){
			start.disabled=false;
			select.disabled=false;
			stop.disabled=true;
			
			h2.innerText = "";
			console.log("stop...")
		}
	
	}
</script>
</head>
<body>
<h1>select option tag</h1>
<hr>

       <%-- select box 생성 --%>
<!-- <select> -->
<!-- 	<option>one</option> -->
<!-- 	<option>two</option> -->
<!-- 	<option>three</option> -->
<!-- 	<option>four</option> -->
<!-- 	<option>five</option> -->
<!-- </select> -->

<button>START</button>

<%-- 스크립틀릿을 이용하여 select 박스의 옵션을 A~Z까지 선택할 수 있게함--%>
<select>
	<%
		for(var i=0; i<26; i++){
	%>
	<option><%=(char)('A'+i)%></option>
	<%
		}
	%>
</select>

<button>STOP</button>

<hr>
<h2></h2>


</body>
</html>