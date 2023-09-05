<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- select를 이용하여 선택된 알파벳이 블링크 되도록 구현 --%>
<title>table7.jsp</title>
<style type="text/css">
	table{
		border-collapse: collapse;
	}
</style>

<script type="text/javascript">
/*Blink 클래스 선언*/
class Blink{
	tid =[]; 
	alpha;
	
	constructor(){
		let select = document.querySelector('select');
		this.alpha = select.options[select.selectedIndex].value
		console.log("생성자 호출!"+this.alpha);
	}
	
	/*블링크 실행 메소드 run()선언*/
	run(){
		let table = document.querySelector('table');

		for(let i = 0; i<20; i++){
			for(let j=0; j<40; j++){
				let td = table.rows[i].cells[j];
				if(td.innerHTML == this.alpha){
					let id = setInterval(function() {
						if(td.style.visibility=='hidden')
							td.style.visibility = 'visible';
						else
							td.style.visibility = 'hidden';	

					}, Math.random()*500+10);
					this.tid.push(id);
				}
			}
		}
		console.log("run()...")	
	}
	
	
	/*블링크 중지 메소드 clear()선언*/
	clear(){
		console.log(this.tid);
		
		for(let id of this.tid)
			clearInterval(id);
		
		console.log("clear()...")
	}
}



	/*자바스크립트 메인 영역 코드*/
	window.onload=function(){
		let start = document.querySelectorAll('button')[0]
		let stop = document.querySelectorAll('button')[1]
		let h2 = document.querySelector('h2');
		
		stop.disabled=true;
		
		let blink;
		
		
		start.onclick = function(){
			blink = new Blink();

			start.disabled=true;
			stop.disabled=false;

			blink.run();

			h2.innerText=blink.alpha+"선택";
			
	
		}
		
		
		stop.onclick = function(){
			start.disabled=false;
			stop.disabled=true;
			
			blink.clear();
			
		}

		
	}

</script>

<script type="text/javascript">

</script>
</head>
<body>
<h1>TABLE TAG 연습</h1>
<button>START</button>

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