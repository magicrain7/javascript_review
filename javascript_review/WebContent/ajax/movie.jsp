<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
//http://www.kobis.or.kr/kobisopenapi/homepg/apiservice/searchServiceInfo.do 영화api
$(function(){
	//박스 오피스 조회버튼
	$("#btnList").on("click", loadDoc);
	//영화상세정보(table 그룹이벤트)
	$("#result").on("click",".movieCd",loadInfo);
});

/*-----------------------------------------------------
영화코드에 해당하는 상세정보(감독, 배우, 상영시간)를 조회하여 div#info에 출력 
-------------------------------------------------------*/
function loadInfo(){
	var dt = $()
	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=430156241533f1d058c603178cc3ca0e&movieCd" + dt;
}

/*-----------------------------------------------------
 * 박스오피스 조회
-----------------------------------------------------*/
function loadDoc() {
    //var dt = document.getElementByid("name").value;
    var dt = $("#name").val();
	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=" + dt;
	
	$.getJSON(url, function(obj){
		var arr = obj.boxOfficeResult.dailyBoxOfficeList;
		for(i=0; i<arr.length; i++) {
			var tr = $("<tr>").append( 
					$("<td>").text(arr[i].movieCd).addClass("movieCd"), 
					$("<td>").text(arr[i].movieNm));
			$("#result").append(tr);
		}
	});
}
</script>
</head>
<body>
<input id="name" value="20200827">
<button type="button" id = "btnList">검색</button>
<table id="result" border=></table>
<div id="info"></div>
</body>
</html>