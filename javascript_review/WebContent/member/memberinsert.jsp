<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member Insert </title>
<script>
function inputCheck(){
	//id,pw 필수입력 체크
	if(frm.id.value =="") {
		window.alert("id 입력");
		frm.id.focus();
		return false;
	}
	if(frm.pw.value =="") {
		alert("pw 입력");
		frm.pw.focus();
		return false;
	}
	//job(select 태그) 선택되었는지 확인
	if(frm.job.value ==""){
	/* if(frm.job.selectedIndex>0) */
		alert("job선택");
		frm.job.focus();
		return flase;
	}
	
	//radio, checkbox
	var gender=
		document.querySelectorAll("[name='gender']:checked").length;
	if(gender==0){
		alter("성별 적어도 하나는 선택");
		return false;
	}
	// 회원가입폼 제출
	/* frm.submit(); */
	return true;
}
</script>
</head>
<body>
<%@include file="../menu.jsp" %>
<h3 class ="page_title">회원등록</h3>
<form method="post" name="frm" 
	  id="frm" action="memberInsertProc.jsp"
	  onsubmit="return inputCheck()">
	<div class="regist">
	<label for="id">id</label>
		<input type="text" id="id" name="id">
	</div>
	
	<div class="regist">	
	<label for="pw">password</label>
		<input type="password" id="pw" name="pw">
	</div>
	
	<div class="regist">
	<label>성별</label>
		<input type="radio" id="male" name="gender" value="male">
		<label for="male" class="label2">남</label>
		<input type="radio" id="female" name="gender" value="female">
		<label for="female" class="label2">여</label>
	</div>
	
	<div class="regist">
	<label for="id">직업</label>
	<select name="job" id="job" >
		<option value="">선택</option>
		<option value="program">프로그래머</option>
		<option value="degin">디자이너</option>
	</select>
	</div>
	
	<div class="regist">
	<label for="reason">가입</label>
	<textarea id="reason" name="reason"></textarea>
	</div>
		
	<div class="regist">
		<label for="hobby">메일수신</label>
		<input type="checkbox" name="mailYn">
	</div>
	
	<div class="regist">
		<button type="reset">초기화</button>
		<button>등록</button>
	</div>
</form>
</body>
</html>