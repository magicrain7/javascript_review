<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
/* 	num1.value=100;
	num2.value=200; */
	
</script>
</head>
<body>
	<input name="num1" id="num1"> +
	<input name="num1" id="num2"> =
	<input name="result" id="result">
	<button type="button" id="btnResult" onclick="checkResult()">결과확인</button>
	<button type="button" id="btnInit" onclick="init()">초기화</button>
	<div id="divResult">    </div>
	
<script>

var ocnt = 0; //맞은수
var xcnt = 0; //틀린수
//두수의 합이 result와 같으면 맞은수 증가 다르면 틀린수 증가
//총 게임횟수 5회가 되면 버튼 비활성화하고 결과 출력

function checkResult(){
	//지역변수
	// 두 수의 합이 result와 같으면 "맞다" 아니면 "틀림" 출력
	/* var sum = parseInt(num1.value)+parseInt(num2.value); */

	if(parseInt(num1.value)+parseInt(num2.value) == parseInt(result.value)){
		//맞은 수 카운트
		/* alert("맞다"); */
		ocnt++;
		divResult.innerHTML += "맞다<br>"
	}else{
		//틀린 수 카운트
		/* window.alert("틀림"); */
		xcnt++;
		divResult.innerHTML += "틀림<br>"
	}
	// 틀린수 + 맞은수 == 5회이면 맞은수 *20 결과를 출력하고 버튼 비활성화.
	if(ocnt + xcnt == 5) {
		alert("결과는" + (ocnt * 20) + "점입니다.");
		btnResult.disabled = "disabled";
		
	} else {
		init();
		result.value = "";
	}
}
//함수 선언
function init(){
	num1.value=Math.floor(Math.random() * 10+1);
	num2.value=Math.floor(Math.random() * 10+1);
}
//함수 호출(실행)
init();
</script>
</body>
</html>