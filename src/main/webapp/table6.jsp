<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table6.jsp</title>
<style type="text/css">
	table{
		border-collapse: collapse;
	}
</style>

<script type="text/javascript">
//자바 스크립트는 변수와 메소드 선언 시 타입이나 void도 필요없다.

/*객체지향 프로그래밍을 위한 Blink 클래스 선언*/
class Blink{
	tid =[]; // 필드 변수
	
	/*블링크 실행 메소드 run()선언*/
	run(){
		let table = document.querySelector('table');

		for(let i = 0; i<20; i++){
			for(let j=0; j<40; j++){
				let td = table.rows[i].cells[j];
				if(td.innerHTML == 'A'){
					let id = setInterval(function() {
						if(td.style.visibility=='hidden')
							td.style.visibility = 'visible';
						else
							td.style.visibility = 'hidden';	

					}, Math.random()*500+10);
					this.tid.push(id); // 자바스크립트에서 필드를 참조하기 위해선 this가 필수이다.
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
			// clrarInterval : setInterval을 중지함 그래서 setInterval의 코드를 변수로 받은 것
		console.log("clear()...")
	}
}



	/*자바스크립트 메인 영역 코드*/
	window.onload=function(){
		let start = document.querySelectorAll('button')[0]
		let stop = document.querySelectorAll('button')[1]
																	// 버튼이 2개임으로 인덱스 값을 참조로 해당 버튼 데이터를 가져옴
		
		start.disabled=false;
		stop.disabled=true;
				// disabled : true면 사용자가 클릭할 수 없게 함 
		
		let blink;
		
		
		start.onclick = function(){
			start.disabled=true;
			stop.disabled=false;
			
			blink = new Blink();
			blink.run();
	
			// 버튼을 눌렀을 때 잘 먹히나 콘솔에서 확인
			console.log("start...")
		}
		
		
		stop.onclick = function(){
			start.disabled=false;
			stop.disabled=true;
			
			blink.clear();
			
			console.log("stop...")
		}
		
		console.log(start);
		console.log(stop);
		
	}

</script>

<script type="text/javascript">

</script>
</head>
<body>
<h1>TABLE TAG 연습</h1>
<button>START</button>
<button>STOP</button>
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