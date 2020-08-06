<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,vo.BoardVO,vo.UserVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>잉력시장 : ${ msg }</title>
    <meta charset="utf-8">
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
    <link rel="stylesheet" href="/javas/resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/javas/resources/css/flaticon.css">
    <link rel="stylesheet" href="/javas/resources/css/icomoon.css">
    <link rel="stylesheet" href="/javas/resources/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
	integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
	crossorigin="" />
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
	integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
	crossorigin=""></script>
  </head>
  <style>
.ftco-section {
    padding: 2em 0;
    position: static;
}

#delbtn {
	background-color: white;
	color: black;
	border: 2px solid #e7e7e7;
	border-radius: 12px;
}

#reviewform{
	padding:20px;
}

table{

    height: 600px;
    width : 600px;
    border: 1px solid #BDBDBD;


}

.checked {
	color: orange;
}

#table4{
width : 200px;
height : 10px;
padding: 20px 40px;
}

  </style>
  <body>
  

<%
	UserVO loginVO = null;
	BoardVO vo = null;
	if(session.getAttribute("loginVO")!=null){
		loginVO = (UserVO)session.getAttribute("loginVO");
	}
	if(request.getAttribute("vo")!=null){
		vo = (BoardVO)request.getAttribute("vo");
	}
%>
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
		  <div class="top-social-menu py-2 bg-light" >
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
     <section class="hero-wrap hero-wrap-2" style="background-image: url('/javas/resources/images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
			 <h1 class="mb-2 bread">구인 게시판</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="/javas/main">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>구인 게시판 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    
    <br><br>
	<c:if test="${!empty loginVO}">
		<div class="icon d-flex justify-content-center align-items-center">
			<span> <img src="/javas/resources/images2/<c:out value="${loginVO.id}" />.png" width="100"></span>
		</div>
		<div class="text" style="text-align: center; font-family: 'Do Hyeon', sans-serif;">
			<h4>
				<c:out value="${loginVO.name}" />
				님 환영합니다!
			</h4>
		</div>
	</c:if>

	<c:if test="${ !empty list }">
		<br>
   <hr style="width : 85%;">
   <br><br>
		<section class="ftco-section">
			<div class="container">
				<div class="row">
	<c:forEach var="vo1" items="${ list }" varStatus="status">
       <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <div style = "text-align : center;">
              <img src="/javas/resources/images2/${ vo1.id }.png" width="100">
              </div>
                 <div style = "text-align : center;">
                 <div class="meta-date text-center p-2">
                  <span class="day">${ vo1.date }</span>
                </div>

              <div class="text border border-top-0 p-4">
                <h3 class="heading"><a href="/javas/board/${ boardType }/listOne?postId=${ vo1.postId }">${ vo1.title }</a></h3>
                <a href="/javas/board/${ boardType }?action=search&key=${ vo1.id }&type=id">${ vo1.id }</a>
                <%-- <p><%= vo1.getPost_content() %></p>
                <p><%= vo1.getPost_location() %></p> --%>
        		<!-- <div class="col-md-6 col-lg-4 ftco-animate"> -->
                <p class="mb-0" style="font-family: 'Do Hyeon', sans-serif;">
                <a href="/javas/board/${ boardType }/listOne?postId=${vo1.postId}" class="btn btn-primary">더보기 <span class="ion-ios-arrow-round-forward"></span></a></p>
                <p class="ml-auto mb-0">
                <span class="icon-chat"></span> ${ vo1.reviewCnt }
	            </p>
                </div>
              </div>
            </div>
          </div>
      	</c:forEach>

			</div>
		</div>

		</section>
		

<hr style="width : 85%;">		
        <div>
          <div class="col text-center">
            <div class="block-27">
<%
				out.print(request.getAttribute("pagelist"));
%>
            </div>
          </div>
        </div>
</c:if>   
<c:if test="${ empty vo }">
<h3 style="text-align:center;font-family: 'Do Hyeon', sans-serif;">${ nullErrorMsg }</h3>
<div style="text-align : center;">
	<div>
		<button class="btn btn-primary" onclick="isAdmin('insert');" style="font-family: 'Do Hyeon', sans-serif; font-size : 20px;">작성하기</button>
		<button class="btn btn-primary" onclick="location.href='/javas/board/jobad'" style="font-family: 'Do Hyeon', sans-serif; font-size : 20px;">처음 페이지로</button>
		<br><br>
		<form action="/javas/board/${ boardType }" method="get">
			<input type="hidden" name="action" value="search">
			<select class="selectpicker" name="type">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="title_content">제목+내용</option>
			</select>
			<input type="text" name="key">
			<input type="submit" value="검색">
		</form>
	</div>
</div>
</c:if>
<c:if test="${ !empty snull }">
	<h1>${ snull }</h1>
	<button onclick="location.href='/javas/board/${ boardType }'">목록 가기</button>
</c:if>
<c:if test="${!empty vo}">
<div class="col-lg-12 ftco-animate">
	<div class="about-author d-flex p-4 bg-light">
		<div style = "margin:auto;">
			<img src="/javas/resources/images2/${vo.id}.png" width=300>
		</div>
		<div style = "width : 500px; margin-right:100px;">
			<h3>
				<c:out value="${vo.title}" />
			</h3>
			<table>
				<tr>
			    	<td id = table4><label for="post_userid"> 작성자 아이디 &nbsp;&nbsp;</label></td><td> <c:out value="${vo.id}" /></td>
		         </tr>
		         <tr>
			    	<td id = table4><label for="post_username"> 작성자 이름 &nbsp;&nbsp;</label></td><td> <c:out value="${vo.name}" /></td>
		         </tr>
		         <tr>
			        <td id = table4><label for="post_content">구직 내용&nbsp;&nbsp;</label></td><td><c:out value="${vo.content}" /></td>
		          </tr>
		          <tr>
			    	<td id = table4><label for="post_writedate"> 등록일 &nbsp;&nbsp;</label></td><td> <c:out value="${vo.date}" /></td>
		         </tr>
		         <tr>
			         <td id = table4><label for="post_hit">조회수&nbsp;&nbsp;</label></td><td><c:out value="${vo.hit}" /></td>
		          </tr>
		          <tr>
			         <td id = table4><label for="post_hit">리뷰 수 &nbsp;&nbsp;</label></td><td><c:out value="${vo.reviewCnt}" /></td>
		          </tr>
			</table>
			<br>
			<div style="font-family: 'Do Hyeon', sans-serif; font-size: 60px;">
				<button class="btn px-4 btn-primary btn-sm" onclick="location.href='/javas/board/${boardType}?pgNum=${sessionScope.pgNum}'">목록 가기</button>
				<button class="btn px-4 btn-primary btn-sm" onclick="isAdmin('delete');">글 삭제하기</button>
				<button class="btn px-4 btn-primary btn-sm" onclick="isAdmin('update');">글 수정하기</button>
  			</div>
		</div>
	</div>
</div>
<div class="pt-5 mt-5">
	<div id="reviewlistbox" style="margin:auto 130px; text-align:center;"></div>

	<c:if test="${empty loginVO}">
		<br>
		<br>
		<h4 style="text-align:center">
			<c:out value="로그인 후, 후기를 남겨주세요" />
		</h4>
	</c:if>

	<c:if test="${!empty loginVO}">
	<!-- 코멘트 입력창 -->
		<div class="comment-form-wrap pt-5" style="width:900px; margin:auto;">
			<div id="reviewformbox">
				<form id="reviewform" name="reviewform" method="post" class="bg-light">

					<label for="review_comment">&nbsp;&nbsp;&nbsp;${loginVO.name}님,후기를 남겨주세요!</label>
					<textarea name="comment" cols="2" rows="2" class="form-control"></textarea>
					<br> <label for="review_rate">&nbsp;&nbsp;&nbsp;만족도&nbsp;&nbsp;&nbsp;</label> 
					<span id= "star1" class="fa fa-star" onclick="star1()"></span> 
					<span id= "star2" class="fa fa-star" onclick="star2()"></span> 
					<span id= "star3" class="fa fa-star" onclick="star3()"></span> 
					<span id= "star4" class="fa fa-star" onclick="star4()"></span> 
					<span id= "star5" class="fa fa-star" onclick="star5()"></span> 
					<input type="hidden" id="review_rate" name="rate" value = "0"/>
					<input type="hidden" name="postId" value="${listOne.postId}"> 
					<input type="hidden" name="targetId" value="${listOne.id}">
					<input type="hidden" name="reviewId" value="0"> 
					<input type="hidden" name="id" value="${loginVO.id}">
					<jsp:useBean id="now" class="java.util.Date" />
					<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
					<input class="form-control" type="hidden" name="date" value="${today}"> <br>
					<button type="button" onclick="reqInsertReview()" class="btn px-4 btn-primary btn-sm">등록</button>
					<input type="reset" value="재작성" class="btn px-4 btn-primary btn-sm">

				</form>
			</div>
		</div>
	</c:if>
</div>
</c:if>
<br><br><br>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src=/javas/resources/js/google-map.js"></script>
  <script src="/javas/resources/js/main.js"></script>
  <script src="/javas/resources/js/bootstrap-select.js"></script>
  <script>
  $(window).on('load', function (){
		$('.selectpicker').selectpicker({
		  		'selectedText': 'cat'
		});
  });
  </script>
  <script>
	function logout(){
		location.href = '/javas/resources/logout.jsp';
	};
	function isAdmin(command){
		<% if(loginVO==null){ %>
			if(command=="insert"){
				window.alert("로그인을 하셔야 글 작성을 하실 수 있습니다!");
				<% if(session.getAttribute("type")!=null){ %>
					location.href = '/javas/board/${boardType}?pgNum='+${sessionScope.pgNum}+'&type='+${sessionScope.type}+'&key='+${sessionScope.key};
				<% } 
					else{
				%>
				location.href = '/javas/board/${boardType}?pgNum='+${sessionScope.pgNum};
				
				<% } %>
			}
			<% if(vo!=null){ %>
			if(command=="update"){
				window.alert("로그인을 하셔야 글 수정을 하실 수 있습니다!");
				location.href = '/javas/board/${ boardType }/listOne?postId='+'<%= vo.getPostId() %>';
			}
			else if(command=="delete"){
				window.alert("로그인을 하셔야 글 삭제를 하실 수 있습니다!");
				location.href = '/javas/board/${ boardType }/listOne?postId='+'<%= vo.getPostId() %>';
			}
			<% } %>
		<% } 
		else{
		%>
			if(command=="insert"){
				location.href = '/javas/board/${boardType}/InsertForm';
			}
			<% if(vo!=null){ %>
			if(command=="update"){
				<% if(loginVO.getId().equals(vo.getId())){ %>
					
					location.href = '/javas/board/${boardType}/UpdateForm';
				
				<% } 
				else{
				%>
					
					window.alert("해당 유저만 글 수정을 하실 수 있어요!");
					location.href = '/javas/board/${boardType}/listOne?postId='+'<%= vo.getPostId() %>';
				
				<% } %>
			}
			else if(command=="delete"){
				<% if(loginVO.getId().equals(vo.getId())){ %>
					
					location.href = '/javas/board/${boardType}/delete?postId='+'<%= vo.getPostId() %>';
				
				<% } 
				else{
				%>
					
					window.alert("해당 유저만 글 삭제를 하실 수 있어요!");
					location.href = '/javas/board/${boardType}/listOne?postId='+'<%= vo.getPostId() %>';
				
				<% } %>
			}
		<% } 
		}
		%>
	}
	
	</script>
	<script>
		
		// 리뷰 등록하기
		function reqInsertReview() {
			getTotalStarRate(); // star rate 만..			
			var request = new XMLHttpRequest();
			var formElement = document.getElementById("reviewform");
			var formdata = new FormData(formElement);
			
			request.open('post', '/javas/review/${boardType}/insert', true);
			request.send(formdata);
			request.onload = function(event) {
				if (request.status == 200) {
					var str = request.responseText;
					if (str == "success") {
						alert("댓글 등록 성공");
						reqReviewList(); 	
					} else {
						alert("댓글 등록 실패");
					}
				} 
			}; 
		}
		
		function reqDeleteReview(review_id) {
			var request = new XMLHttpRequest();
			var formdata = new FormData();
			
			formdata.enctype='multipart/form-data';
			formdata.method='post';
			formdata.action='/javas/review/${boardType}/delete';
			
			formdata.append('postId', '${listOne.postId}');
			formdata.append('reviewId', review_id);
			console.log(review_id);
			request.open('post', '/javas/review/${boardType}/delete', true);
			request.send(formdata);

			request.onload = function(event) {
				if (request.status == 200) {
					var str = request.responseText;
					if (str == "success") {
						alert("댓글 삭제 성공");
						reqReviewList();
					} else {
						alert("댓글 삭제 실패");
					}
				}
			};
		}
		function reqReviewList() {
			var request = new XMLHttpRequest();
			var formdata = new FormData();
			
			formdata.enctype='multipart/form-data';
			formdata.method='post';
			formdata.action='/javas/review/${boardType}';
			
			formdata.append('postId', '${listOne.postId}');

			request.open('post', '/javas/review/${boardType}', true);
			request.send(formdata);

			request.onload = function(event) {
				if (request.status == 200) {
					var str = request.responseText;
					var reviewList = JSON.parse(str);
					console.log(reviewList);
					var target = document.getElementById("reviewlistbox");
					target.innerHTML = "";
					for(var i in reviewList){					
					target.innerHTML += "<td width=100>" + reviewList[i].id + "</td> &nbsp; &nbsp;";
					target.innerHTML += "<td width=400>" + reviewList[i].comment + "</td> &nbsp; &nbsp;";
					
					var star0 = "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>";
					var star1 = "<span class='fa fa-star checked'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>";   
					var star2 = "<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>";
					var star3 = "<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>";
					var star4 = "<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star'></span>";
					var star5 = "<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span>";
											
					if(reviewList[i].rate == 0)
						target.innerHTML += "<td width=200>" + star0 + "</td> &nbsp; &nbsp;";
					if(reviewList[i].rate == 1)
						target.innerHTML += "<td width=200>" + star1 + "</td> &nbsp; &nbsp;";
					if(reviewList[i].rate == 2)
						target.innerHTML += "<td width=200>" + star2 + "</td> &nbsp; &nbsp;";
					if(reviewList[i].rate == 3)
						target.innerHTML += "<td width=200>" + star3 + "</td> &nbsp; &nbsp;";
					if(reviewList[i].rate == 4)
						target.innerHTML += "<td width=200>" + star4 + "</td> &nbsp; &nbsp;";
					if(reviewList[i].rate == 5)
						target.innerHTML += "<td width=200>" + star5 + "</td> &nbsp; &nbsp;";
										
										
					target.innerHTML += "<td width=200>" + reviewList[i].date + "</td> &nbsp; &nbsp;";
					if(reviewList[i].id == "${loginVO.id}"){
						target.innerHTML += "<td><button id='delbtn' onclick='reqDeleteReview(\""+reviewList[i].reviewId+"\")'>삭제</button></td><br>";
					}
					else {
						target.innerHTML +="<br>";
					}
				}
					target.innerHTML += "</tr></table>";
					
				};
			}
			
		}
		
		window.onload = function(){
			reqReviewList();
		};

		
		function star1(){
			var s1 = document.getElementById("star1").className;
			var s2 = document.getElementById("star2").className;
			var s3 = document.getElementById("star3").className;
			var s4 = document.getElementById("star4").className;
			var s5 = document.getElementById("star5").className;
			

			if(s1=="fa fa-star" && s2 == "fa fa-star" 
			&& s3 == "fa fa-star" && s4 == "fa fa-star" 
			&& s5 == "fa fa-star"){
				document.getElementById("star1").className = "fa fa-star checked";
			} else {
				document.getElementById("star1").className = "fa fa-star";
			}

		}
		
		function star2(){
			var s1 = document.getElementById("star1").className;
			var s2 = document.getElementById("star2").className;
			var s3 = document.getElementById("star3").className;
			var s4 = document.getElementById("star4").className;
			var s5 = document.getElementById("star5").className;
			
			if(s1 == "fa fa-star checked" && s3 == "fa fa-star" 
					&& s4 == "fa fa-star" && s5 == "fa fa-star"){
				if(s2=="fa fa-star"){
					document.getElementById("star2").className = "fa fa-star checked";
				} else {
					document.getElementById("star2").className = "fa fa-star";
				}
			}
			
		}
		
		function star3(){
			var s1 = document.getElementById("star1").className;
			var s2 = document.getElementById("star2").className;
			var s3 = document.getElementById("star3").className;
			var s4 = document.getElementById("star4").className;
			var s5 = document.getElementById("star5").className;
			
			if(s1 == "fa fa-star checked" && s2 == "fa fa-star checked" 
					&& s4 == "fa fa-star" && s5 == "fa fa-star"){
				if(s3=="fa fa-star"){
					document.getElementById("star3").className = "fa fa-star checked";
				} else {
					document.getElementById("star3").className = "fa fa-star";
				}
			}
		}
		
		function star4(){
			var s1 = document.getElementById("star1").className;
			var s2 = document.getElementById("star2").className;
			var s3 = document.getElementById("star3").className;
			var s4 = document.getElementById("star4").className;
			var s5 = document.getElementById("star5").className;

			if(s1 == "fa fa-star checked" && s2 == "fa fa-star checked" 
					&& s3 == "fa fa-star checked" && s5 == "fa fa-star"){
				if(s4=="fa fa-star"){
					document.getElementById("star4").className = "fa fa-star checked";
				} else {
					document.getElementById("star4").className = "fa fa-star";
				}
			}
		}
		
		function star5(){			
			var s1 = document.getElementById("star1").className;
			var s2 = document.getElementById("star2").className;
			var s3 = document.getElementById("star3").className;
			var s4 = document.getElementById("star4").className;
			var s5 = document.getElementById("star5").className;
			
			if(s1 == "fa fa-star checked" && s2 == "fa fa-star checked" 
					&& s3 == "fa fa-star checked" && s4 == "fa fa-star checked"){
				if(s5=="fa fa-star"){
					document.getElementById("star5").className = "fa fa-star checked";
				} else {
					document.getElementById("star5").className = "fa fa-star";
				}
			}
		}
		
		function getTotalStarRate(){
			var s1 = document.getElementById("star1").className;
			var s2 = document.getElementById("star2").className;
			var s3 = document.getElementById("star3").className;
			var s4 = document.getElementById("star4").className;
			var s5 = document.getElementById("star5").className;
			var res = 0;
			if(s1 == "fa fa-star checked") res += 1;
			if(s2 == "fa fa-star checked") res += 1;
			if(s3 == "fa fa-star checked") res += 1;
			if(s4 == "fa fa-star checked") res += 1;
			if(s5 == "fa fa-star checked") res += 1;
			
			//alert(document.getElementById("review_rate").value);
			document.getElementById("review_rate").value=res;
			
			//alert(res);
		}

	</script>
  </body>
</html>