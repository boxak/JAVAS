<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${ boardType=='jobad' }">
<title>잉력시장 : 작성[구인]</title>
</c:if>
<c:if test="${ boardType=='wantad' }">
<title>잉력시장 : 작성[구직]</title>
</c:if>
 <meta charset="UTF-8">
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
	        	<c:if test="${ boardType=='jobad' }">
	        	<li class="nav-item active"><a href="/javas/board/jobad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구인</a></li>
	        	<li class="nav-item"><a href="/javas/board/wantad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구직</a></li>
	        	</c:if>
	        	<c:if test="${ boardType=='wantad' }">
	        	<li class="nav-item"><a href="/javas/board/jobad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구인</a></li>
	        	<li class="nav-item active"><a href="/javas/board/wantad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구직</a></li>
	        	</c:if>
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
	          	<li class="nav-item"><a href="/javas/signForm" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">회원가입</a></li>
	          	</c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <br><br><br>
    <div class="container">
<div class="col-md-5" style="margin: auto 300px;">
    <div class="form-area">  
        <form method="post" action="/javas/board/${ boardType }/post">
        <input type="hidden" name="action" value="insert">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center; font-family: 'Do Hyeon', sans-serif; font-size: 30px;">글 작성하기</h3>
                    <div class="form-group">
						 <input class="form-control" type="hidden" name="postId" value="a">
						 <input class="form-control" type="hidden" name="id" value="${loginVO.id}">
						 <input class="form-control" type="hidden" name="name" value="${loginVO.name}">
						 <jsp:useBean id="now" class="java.util.Date" />
						 <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />

						 <input class="form-control" type="hidden" name="date" value="${today}">
						 <input class="form-control" type="hidden" name="hit" value="0">
						 <input class="form-control" type="hidden" name="reviewCnt" value="0">
					</div>
					<div class="form-group">
						 <input class="form-control" type="text" id="post_title" name="title" placeholder="제목">
					</div>
					<div class="form-group">
                    	<textarea class="form-control" type="textarea" id="post_content" name="content" placeholder="내용 작성" maxlength="140" rows="7"></textarea>                    
                    </div>
		<div style="text-align:center;">
        <input type="submit" value="등록" class="btn btn-primary pull-right" style="margin-right: 10px;">
        <input type="reset" value="다시 쓰기" class="btn btn-primary pull-right" style="margin-right: 10px;">
        <input type="button" value="작성 취소" onclick="location.href='javas/board/${boardType}'"  class="btn btn-primary pull-right" style="margin-right: 10px;">
        </div>
        </form>
    </div>
</div>
</div>

	<!-- <script>
		function reqInsertWantad() {
			var request = new XMLHttpRequest();
			var formElement = document.getElementById("wantadform");
			var formdata = new FormData(formElement);

			request.open('post', '/javas/wantad/insert', true);
			request.send(formdata);

			request.onload = function(event) {
				if (request.status == 200) {
					var str = request.responseText;
					if (str == "success") {
						alert("글 등록 성공");
						window.location.href = "http://localhost:8080/javas/wantad";
					} else {
						alert("글 등록 실패");
					}
				}
			}
		}
	</script> -->
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/javas/resources/js/google-map.js"></script>
  <script src="/javas/resources/js/main.js"></script>
  <script src="/javas/resources/js/bootstrap-select.js"></script>	
</body>
</html>