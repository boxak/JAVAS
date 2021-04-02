<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice Result</title>
</head>
<body>
<script>
alert("${msg}");
location.href = "/javas/board/${boardType}";
</script>
</body>
</html>