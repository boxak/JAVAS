<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.UserVO, java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잉력시장 : 회원정보 수정</title>
    <script src="/javas/resources/juso.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/javas/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/javas/resources/css/animate.css">
    
    <link rel="stylesheet" href="/javas/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/javas/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/javas/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/javas/resources/css/aos.css">

    <link rel="stylesheet" href="/javas/resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="/javas/resources/css/flaticon.css">
    <link rel="stylesheet" href="/javas/resources/css/icomoon.css">
    <link rel="stylesheet" href="/javas/resources/css/style.css">
</head>
<style>
b {
	color: red;
}

#table1 {
	width: 400px;
	height: 200px;
	margin-left: auto;
	margin-right: auto;
	border-bottom:none;
}

#table2 {
border-bottom:none;
text-align: left;
}

#table3{
text-align: center;
width : 500px
}

#table4{
border-bottom:none;
width : 300px;
}
 
</style>
<body>
	<h1 style="font-family: 'Do Hyeon', sans-serif;">내 정보</h1>
	<hr>
	<br>
	<br>
    <form method="post" name="userInfo" action="/javas/sign.do" enctype="multipart/form-data">
        <table id=table1>
        <tr id=table2>
			<td id = table4><b>*</b> 아이디</td>
			<td><input id="userid" style="width: 200px; text-align: left;" type="text" name="id" value="${ loginVO.id }">
			<input type="button" value="중복확인" onclick="openIdCheck();">
			<input type="hidden" name="idDuplication" value="idUncheck">
			</td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<tr id=table2>
			<td id = table4><b>*</b> 비밀번호</td><td><input id="password" style="width: 200px; text-align: left;" type="password" name="password"></td>
		</tr>
		<tr id=table2><td id=table2>&nbsp;</td></tr>
		<tr id=table2>
			<td id = table4><b>*</b> 비밀번호 확인</td><td><input id="password" style="width: 200px; text-align: left;" type="password" name="passwordcheck"></td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<tr id=table2>
			<td id = table4><b>*</b> 이름</td><td><input id="username" style="width: 200px; text-align: left;" type="text" name="name" value="${ loginVO.name }"></td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<tr id=table2>
			<td id = table4><b>*</b> 이메일</td><td><input id="email" style="width: 200px; text-align: left;" type="email" name="email" value="${ loginVO.email }"></td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<tr id=table2>	
			<td id = table4><b>*</b> 생일</td><td><input id="birthday" style="width: 200px; text-align: left;" type="date" name="birthday" value="${ loginVO.birthday }"></td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<tr id=table2>	
			<td id = table4><b>*</b> 성별</td><td> <SELECT name='sex'>
						<c:if test="${ loginVO.sex=='female' }">
			            <OPTION value='female'>여자</OPTION>
			            <OPTION value='male'>남자</OPTION>
			            </c:if>
			            <c:if test="${ loginVO.sex=='male' }">
			            <OPTION value='male'>남자</OPTION>
			            <OPTION value='female'>여자</OPTION>
			            </c:if>
			            </SELECT></td>
	    </tr>
	    <tr id=table2>
	    	<td id=table2>&nbsp;</td>
	    </tr>
	    <tr id=table2>
			<td id = table4><b>*</b> 핸드폰 번호</td><td><input id="phone" style="width: 200px; text-align: left;" type="tel" name="phone" value="${ loginVO.phone }"></td>
		</tr>
		<tr id=table2>
			<td>&nbsp;</td>
		</tr>
		<tr id=table2>	
			<td id = table4><b>*</b> 주소
			<input type="button" value="주소 검색" onclick="goPopup();"></td><td>
			<input id="address" style="width: 300px; text-align: left; font-size:12px;" type="text" name="address" value="${ loginVO.address }"
			class="form-control" required="true" readonly="true"></td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<!-- <tr>	
			<td id = table4>구인/구직 일시</td><td> <input id="register" style="width: 200px; text-align: left;" type="date" name="mem_register_date"></td>
		</tr>
		<tr><td>&nbsp;</td></tr> -->
		<tr id=table2>	
			<td id = table4>프로필 사진</td><td> 
			<input id="photo" style="width: 200px; text-align: left;" type="file" name="photo"> </td>
		</tr>
		<tr id=table2>
			<td id=table2>&nbsp;</td>
		</tr>
		<tr id=table2>
			<td id = table4><b>*</b> 직업 </td><td> <SELECT name='isEmployer'>
						<c:if test="${ loginVO.isEmployer=='1' || empty loginVO }">
				        <OPTION value='1'>사업자</OPTION>
				        <OPTION value='2'>파트타이머</OPTION>
				        </c:if>
				        <c:if test="${ loginVO.isEmployer=='2' }">
				        <OPTION value='2'>파트타이머</OPTION>
				        <OPTION value='1'>사업자</OPTION>
				        </c:if>
			            </SELECT></td>
		</tr>
		<tr id=table2><td id=table2>&nbsp;</td></tr>
		<tr id=table2><td id=table2>&nbsp;</td></tr>
		<tr id=table2><td id=table2>&nbsp;</td></tr>
		<tr id=table2>
			<td id = table3 colspan ="2" style = "text-align: center;">
				<input type="submit" value="회원가입"> 
				<input type="reset" value="재작성"> 
				<input onclick="location.href='/javas/main'" type="button" value="취소">
			</td>
		</tr>
		</table>
	</form>
    
		
  <script src="/javas/resources/js/jquery.min.js"></script>
  <script src="/javas/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/javas/resources/js/popper.min.js"></script>
  <script src="/javas/resources/js/bootstrap.min.js"></script>
  <script src="/javas/resources/js/jquery.easing.1.3.js"></script>
  <script src="/javas/resources/js/jquery.waypoints.min.js"></script>
  <script src="/javas/resources/js/jquery.stellar.min.js"></script>
  <script src="/javas/resources/js/owl.carousel.min.js"></script>
  <script src="/javas/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/javas/resources/js/aos.js"></script>
  <script src="/javas/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/javas/resources/js/scrollax.min.js"></script>
  <script src="/javas/resources/js/main.js"></script>
  <script>
  function repeatCheck(){

		var request = new XMLHttpRequest();
		var id = document.getElementsByName("id")[0].value;
		request.onload = function(event){
			if(request.status==200){
				var str = request.responseText;
				var obj = JSON.parse(str);
				alert('zzz');
			}
		}
		request.open('POST',"/javas/idCheck",true);
		request.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
		request.send("id="+id);
	}

	function checkValue(){
		var form = document.userInfo;
		
		if(!form.id.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if(form.idDuplication.value!="idCheck"){
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		if(!form.password.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		if(form.password.value!=form.passwordcheck.value){
			alert("비밀번호를 동일하게 입력하세요.");
		}
		
		if(!form.name.value){
			alert("이름을 입력하세요.");
			return false;
		}
		
		if(!form.email.value){
			alert("이메일을 입력하세요.");
			return false;
		}
		
		if(!form.birthday.value){
			alert("생일을 입력하세요.");
			return false;
		}
		
		if(!form.phone.value){
			alert("휴대폰 번호를 입력하세요.");
			return false;
		}
		
		if(!form.address.value){
			alert("주소를 입력하세요.");
		}
		
	}

	function openIdCheck(){
		window.name = "parentForm";
		window.open("resources/IdCheckForm.html",
				"checkForm","width=500, height=300, resizable=no,scrollbars=no");
	}

	function inputIdCheck(){
		document.userInfo.idDuplication.value = "idUncheck";
	}

  </script>
</body>
</html>