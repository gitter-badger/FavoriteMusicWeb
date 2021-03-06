<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="resources/css/style.css">
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="resources/js/index.js"></script>
<title>Favorite Music Admin Page</title>
</head>
<!-- login -->
<script type="text/javascript">
	function login() {
		var user_id = document.login3.userid.value;
		var passwd = document.login3.passwd.value;
		if (user_id == "" || user_id == null) {
			alert("아이디를 다시 입력해 주세요");
			document.getElementById("userid").focus();
		} else if (passwd == "" || passwd == null) {
			alert("비밀번호 다시 입력해 주세요");
			document.getElementById("passwd").focus();
		} else {
			alert("완료");
			document.login3.action = "/web/user/getUserInfo";
			document.login3.submit();
		}
	}
</script>
<!--  video/195550.mp4 -->
<!-- Video -->
<video id="movie" poster="ittank.png" preload="auto" autoplay loop>
	<source src="resources/video/187711.mp4" type="video/mp4">
</video>

<body>
	<div id="polina">
		<h1>VM! Sound Admin Login</h1>
		<form name="login3" method="get">
			<div class="id">
				<input type="text" name="userid" id="userid"
					placeholder="M!Plan 계정 (아이디)">
			</div>
			<div class="pass">
				<input type="password" name="passwd" id="passwd" placeholder="비밀번호">
			</div>
			<div class="checkbox">
				<input type="checkbox" name="checkbox" id="checkbox"> <label
					for="checkbox">로그인 상태 유지 </label>
			</div>
			<div class="button">
				<input type="button" value="로그인" class="button"
					onclick="javascript:login();" />
			</div>
			<div class="info">
				<a class="idsearch" href="#" target="_blank">M!Plan 계정찾기</a> <a
					class="passsearch" href="#" target="_blank">M!Plan 비밀번호찾기</a>
			</div>
		</form>
	</div>
</body>
</html>
