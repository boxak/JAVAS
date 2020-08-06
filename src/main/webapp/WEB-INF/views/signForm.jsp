<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잉력시장 : 회원가입</title>
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

color : red;

}

table {
    width: 500px;
    height: 200px;
    margin-left: auto;
    margin-right: auto;
  }

#table4{
border-bottom:none;
width : 400px;
}  
 
</style>
<body>
    <div class="bg-top navbar-light d-flex flex-column-reverse">
    	<div class="container py-3">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="/javas/main" style="font-family: 'Do Hyeon', sans-serif;">잉/력/시/장 <span>Surplus-Power Market</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex" style="font-family: 'Do Hyeon', sans-serif;">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-paper-plane"></span></div>
					    	<div class="text">
					    		<span>Email</span>
						    	<span>surpluspowermarket@gmail.com</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-call"></span></div>
						    <div class="text">
						    	<span>Call</span>
						    	<span>+123 523 5598</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-time"></span></div>
						    <div class="text">
						    	<span>Project Period</span>
						    	<span>20200309-20200319</span>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
		    </div>
		  <div class="top-social-menu py-2 bg-light">
		  	<div class="container">
		  		<div class="row">
			    	<div class="col">
			    		<p class="social mb-0">
			    			<a href="#"><i class="ion-logo-facebook"></i><span class="sr-only">Facebook</span></a>
			    			<a href="#"><i class="ion-logo-twitter"></i><span class="sr-only">Twitter</span></a>
			    			<a href="#"><i class="ion-logo-googleplus"></i><span class="sr-only">Googleplus</span></a>
			    		</p>
			    	</div>
			    	<div class="col text-right">
			    		<a href="#" class="btn-link">@JAVAS</a>
			    	</div>
			    </div>
		  	</div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	          <ul class="navbar-nav mr-auto">
	            <li class="nav-item"><a href="/javas/main" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">홈</a></li>
	            <li class="nav-item"><a href="/javas/about" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">소개</a></li>
	        	<li class="nav-item"><a href="/javas/developers" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">개발진</a></li>
	        	<li class="nav-item"><a href="/javas/board/jobad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구인</a></li>
	        	<li class="nav-item"><a href="/javas/board/wantad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구직</a></li>
	            <li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<c:if test="${!empty loginVO}">
					<li class="nav-item"><a href="/javas/mypage" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">마이페이지</a></li>
					<li class="nav-item"><a href="/javas/logout" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">로그아웃</a></li>
				</c:if>         	
				<c:if test="${empty loginVO}">
	          	<li class="nav-item"><a href="/javas/login/form" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">로그인</a></li>
	          	<li class="nav-item active"><a href="/javas/signForm" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">회원가입</a></li>
	          	</c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
	
	<br>
	<br>
	<h1 style="font-family: 'Do Hyeon', sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원가입</h1>
	<!-- 회원가입 폼. -->
	<hr style="width:90%;">
	<br>
	<br>
		<form method="post" name="userInfo" action="/javas/signin.do" enctype="multipart/form-data">
        <table>
        <tr>
			<td id = table4><b>*</b> 아이디</td><td><input id="userid" style="width: 200px; text-align: left;" type="text" name="id">
			<input type="button" value="중복확인" onclick="openIdCheck();">
			<input type="hidden" name="idDuplication" value="idUncheck">
		</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td id = table4><b>*</b> 비밀번호</td><td><input id="firstPW" onKeyUp="checkPW();" style="width: 200px; text-align: left;" type="password" name="password"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td id = table4><b>*</b> 비밀번호 확인</td><td><input id="secondPW" onKeyUP="checkPW();" style="width: 200px; text-align: left;" type="password" name="passwordcheck"></td>
		</tr>
		<tr>
			<td id="checkMsg"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td id = table4><b>*</b> 이름</td><td><input id="username" style="width: 200px; text-align: left;" type="text" name="name"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td id = table4><b>*</b> 이메일</td><td><input id="email" style="width: 200px; text-align: left;" type="email" name="email"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>	
			<td id = table4><b>*</b> 생일</td><td><input id="birthday" style="width: 200px; text-align: left;" type="date" name="birthday"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>	
			<td id = table4><b>*</b> 성별</td><td> <SELECT name='sex'>
			            <OPTION value='female'>여자</OPTION>
			            <OPTION value='male'>남자</OPTION>
			            </SELECT></td>
	    </tr>
	    <tr><td>&nbsp;</td></tr>
	    <tr>
			<td id = table4><b>*</b> 핸드폰 번호</td><td><input id="phone" style="width: 200px; text-align: left;" type="tel" name="phone"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>	
			<td id = table4><b>*</b> 주소
			<input type="button" value="주소 검색" onclick="goPopup();"></td><td>
			<input id="address" style="width: 300px; text-align: left; font-size:12px;" type="text" name="address" 
			class="form-control" required="true" readonly="true"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<!-- <tr>	
			<td id = table4>구인/구직 일시</td><td> <input id="register" style="width: 200px; text-align: left;" type="date" name="mem_register_date"></td>
		</tr>
		<tr><td>&nbsp;</td></tr> -->
		<tr>	
			<td id = table4>프로필 사진</td><td> 
			<input id="photo" style="width: 200px; text-align: left;" type="file" name="photo"> </td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td id = table4><b>*</b> 직업 </td><td> <SELECT name='isEmployer'>
				        <OPTION value='1'>사업자</OPTION>
				        <OPTION value='2'>파트타이머</OPTION>
			            </SELECT></td>
		</tr>
		<jsp:useBean id="toDay" class="java.util.Date" />
		<fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd HH:mm' var="nowDate"/>
		<tr>
			<td id = table4><b></b></td><td><input id="register_date" style="width: 200px; text-align: left;" type="hidden" name="date"
			value="${ nowDate }"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
				<td id = table3 colspan ="2" style = "text-align: center;">
				<input type="submit" value="회원가입"> 
				<input type="reset" value="재작성"> 
				<input onclick="location.href='/javas/main'" type="button" value="취소">
				</td>
			</tr>
		</table>
		</form>
		<br><br><br><br><br><br>
 <footer class="ftco-footer ftco-bg-dark ftco-section">
    <h2 style = "color : #ffffff; text-align : center;">Have a Questions?</h2>
    <div style = "text-align : center;">
    <span class="icon icon-map-marker"></span><span class="text">212 Teheran-ro, Gangnam-gu, Seoul, Republic of Korea (06220)</span>
	              <br><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a>
	              <br><a href="#"><span class="icon icon-envelope"></span><span class="text">surpowermarket@gmail.com</span></a>
    </div>
    <br><br><br>
 <p style = "text-align : center;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">@JAVAS</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
    </footer>
    
		
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

	function checkPW(){
		var pwDom1 = document.getElementById("firstPW");
		var pwDom2 = document.getElementById("secondPW");
		var checkMsgDom = document.getElementById("checkMsg");
		var checkMsg = checkMsgDom.value;
		var color = checkMsgDom.style.color;
		
		var pw1 = pwDom1.value;
		var pw2 = pwDom2.value;
		console.log("pw1 : "+pw1+", pw2 : "+pw2);
		if(pw1!=pw2){
			if(color=="green" || !checkMsg){
				checkMsgDom.textContent = "비밀번호가 일치하지 않습니다!";
				checkMsgDom.style.color = "red";
			}
		}
		if(pw1==pw2){
			if(color=="red" || !checkMsg){
				checkMsgDom.textContent = "비밀번호가 일치합니다.";
				checkMsgDom.style.color = "green";
			}
		}
	}
  </script>
</body>
</html>