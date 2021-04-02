<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.BoardVO, vo.UserVO, java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>잉력시장 : 소개</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
    
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
	            <li class="nav-item active"><a href="/javas/about" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">소개</a></li>
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
	          	<li class="nav-item"><a href="/javas/signForm" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">회원가입</a></li>
	          	</c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('/javas/resources/images/image_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">소개</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="/javas/main">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>소개 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pb">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">소개</span>
            <h2 class="mb-4">왜 잉력시장일까요?</h2>
            <p>잉력시장은 잉력시장 만의 가치가 있습니다.</p>
          </div>
        </div>
  			<div class="row tabulation mt-4 ftco-animate">
  				<div class="col-md-4">
						<ul class="nav nav-pills nav-fill d-md-flex d-block flex-column">
						  <li class="nav-item text-left">
						    <a class="nav-link active py-4" data-toggle="tab" href="#services-1"><span class="flaticon-analysis mr-2"></span> 능력 개발</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-2"><span class="flaticon-business mr-2"></span> 완벽한 매칭</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-4"><span class="flaticon-money mr-2"></span> 상생 가능성</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-5"><span class="flaticon-rating mr-2"></span> 광고 효과</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-6"><span class="flaticon-search-engine mr-2"></span> 시간의 금전적 효율</a>
						  </li>
						</ul>
					</div>
					<div class="col-md-8">
						<div class="tab-content">
						  <div class="tab-pane container p-0 active" id="services-1">
						  	<div class="img" style="background-image: url(/javas/resources/images/skill.jpg);"></div>
						  	<h3><a href="#">능력 개발</a></h3>
						  	<p>취미, 시간 죽이기, 더이상 쓰지 않는 수준에서 머물던 기술을 지속적으로 사용함으로써 능력을 개발할 수 있습니다.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-2">
						  	<div class="img" style="background-image: url(/javas/resources/images/matching.jpg);"></div>
						  	<h3><a href="#">완벽한 매칭</a></h3>
						  	<p>장소, 시간, 시급 등의 필요 조건을 완벽히 매칭시켜줌으로써 후회되지 않는 선택을 할 수가 있습니다.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-4">
						  	<div class="img" style="background-image: url(/javas/resources/images/good.jpg);"></div>
						  	<h3><a href="#">상생 가능성</a></h3>
						  	<p>일을 하고자 하는 사람과 쓰고자 하는 사람 간의 필요성을 채워줌으로써 얻는 상생 가능성을 거론합니다.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-5">
						  	<div class="img" style="background-image: url(/javas/resources/images/marketing.jpg);"></div>
						  	<h3><a href="#">광고 효과</a></h3>
						  	<p>다양한 연령대의 수많은 사람들이 모이는 플랫폼에서 자기 자신을, 나아가서 자신의 사업장을 광고해 인지도를 높일 수 있습니다.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-6">
						  	<div class="img" style="background-image: url(/javas/resources/images/time.png);"></div>
						  	<h3><a href="#">시간의 금전적 효율</a></h3>
						  	<p>쉽게 운용할 수 있지만 남기만 했던 시간을 효율적으로 원하는 곳에 사용하고 대가를 얻음으로써 금전적 효율을 누릴 수 있습니다.</p>
						  </div>
						</div>
					</div>
				</div>
    	</div>
    </section>

    <section class="ftco-section">
			<div class="container" style="text-align:center;">
				<div class="row">
					<div class="col-lg-4 d-flex">
						<div class="services-2 border rounded text-center ftco-animate">
							<div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-analysis"></span></div>
							<div class="text media-body">
								<h3>능력 개발</h3>
								<p>기술을 지속적으로 사용함으로써 능력 개발</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 d-flex">
						<div class="services-2 border rounded text-center ftco-animate">
							<div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-business"></span></div>
							<div class="text media-body">
								<h3>완벽한 매칭</h3>
								<p>필요 조건의 흠 없는 매칭</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 d-flex">
						<div class="services-2 border rounded text-center ftco-animate">
							<div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-money"></span></div>
							<div class="text media-body">
								<h3>상생 가능성</h3>
								<p>구직자와 구인자 간의 상생 가능성</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 d-flex">
						<div class="services-2 border rounded text-center ftco-animate">
							<div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-rating"></span></div>
							<div class="text media-body">
								<h3>광고 효과</h3>
								<p> 자기 자신, 나아가서 자신의 사업장 광고</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 d-flex">
						<div class="services-2 border rounded text-center ftco-animate">
							<div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-search-engine"></span></div>
							<div class="text media-body">
								<h3>시간의 금전적 효율</h3>
								<p>남는 시간을 이용한 금전적 효율</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		
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
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
    
  </body>
</html>