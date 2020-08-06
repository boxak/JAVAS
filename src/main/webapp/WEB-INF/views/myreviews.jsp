<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 리뷰</title>
</head>
<style>
table {
 width : 900px;
 height: 40px;
 text-align : center;
}
tr,th {
  border-bottom: 1px solid #444444;
  border-light: 1px solid #444444;
  text-align : center;
}
</style>
<body>
<table class="head">
	<tr>
		<th width=100>작성자 아이디</th>
		<th width=400>코멘트</th>
		<th width=100>별점</th>
		<th width=100>날짜</th>
	</tr>
</table>

<table id="myReviews">
</table>
<script>
window.onload = function(){
	var request = new XMLHttpRequest();
	var reviewDom = document.getElementById("myReviews");
	request.onload = function(){
		if(request.status==200){
			var str = request.responseText;
			var jsonObj = JSON.parse(str);
			console.log(jsonObj);
			for(var inx in jsonObj){
				reviewDom.innerHTML+="<tr>"
				+"<td width=100>"+jsonObj[inx].id+"</td>"
				+"<td width=400>"+jsonObj[inx].comment+"</td>"
				+"<td width=200>"+jsonObj[inx].rate+"</td>"
				+"<td width=100>"+jsonObj[inx].date+"</td>"
				+"</tr>";
			}
		}
	}
	request.open('GET','/javas/myreviews',true);
	request.send();
}
</script>
</body>
</html>