<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {width : 100px;}
</style>
</head>
<body>
<script>
var imgArr = ["../images/Chrysanthemum.jpg",
			"../images/Desert.jpg",
			"../images/Koala.jpg",
			"../images/Jellyfish.jpg"];
			
for(var i=0; i<imgArr.length; i++) {
/* 	document.write("<img src=' "+ imgArr[i] +"'>"); */
	var img = document.createElement("img");  //태그 생성
	img.src = imgArr[i];					  //src 속성변경
	document.body.appendChild(img);		      //body에  추가
	img.addEventListener("mouseover", function(){			 //이벤트 지정
		this.style.width = "200px";			  
	});
	img.addEventListener("mouseout", function() {
		this.style.width = "100px";
	});
}
</script>
</body>
</html>