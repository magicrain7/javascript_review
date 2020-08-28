<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
//https://www.w3schools.com/js/js_ajax_http.asp
function loadDoc() {
//1. XHR 객체 생성
  var xhttp = new XMLHttpRequest();
//2. 콜벡함수
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 ){
    	if(this.status == 200) {
    		
	    	//json으로 받아온 경우
	    	var obj = JSON.parse(	this.responseText	);
	    	/* for(i=0; i < obj.length; i++) {
	      	document.getElementById("result").innerHTML += obj[i].name + "<br>";
	      	//document.getElementById("result").innerHTML += obj.id + "<br>";
	    		} */
	    	var daily = obj.boxOfficeResult.dailyBoxOfficeList;
	    	var movie = obj.boxOfficeResult.dailyBoxOfficeList[5].movieNm;
	    	for(i=0; i<daily.length; i++) {
	    		
	    		result.innerHTML += daily[i].movieNm + "<br>"
	    	}
    		
	    	} else {
	    		document.getElementById("result").innerHTML = xhttp.status +", "
	    													  xhttp.statusText;	
    		}
    } else {
    	document.getElementById("result").innerHTML = "처리중" + "<br>";
    }
  };
	//3. 요청준비
	  var dt = document.getElementById("name").value;
	  var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=" + dt;
	 // var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200127";
	  xhttp.open("GET", url, true);
	  //xhttp.open("GET", "./server/memberInfo.jsp", true);
	//4. 요청시작
	  xhttp.send();
	}
</script>
</head>
<body>
<input type="text" id="name">
<button type="button" onclick="loadDoc()">검색</button>
<div id="result"></div>
</body>
</html>