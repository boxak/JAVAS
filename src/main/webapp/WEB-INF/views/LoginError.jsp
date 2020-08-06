<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 에러 화면</title>
</head>
<body>
<script>
	window.alert("${msg}");
	window.onload = function(){
		location.href = '/javas/login/form';
	}
</script>
</body>
</html>