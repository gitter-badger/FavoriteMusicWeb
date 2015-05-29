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
			alert("���̵� �ٽ� �Է��� �ּ���");
			document.getElementById("userid").focus();
		} else if (passwd == "" || passwd == null) {
			alert("��й�ȣ �ٽ� �Է��� �ּ���");
			document.getElementById("passwd").focus();
		} else {
			alert("�Ϸ�");
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
					placeholder="M!Plan ���� (���̵�)">
			</div>
			<div class="pass">
				<input type="password" name="passwd" id="passwd" placeholder="��й�ȣ">
			</div>
			<div class="checkbox">
				<input type="checkbox" name="checkbox" id="checkbox"> <label
					for="checkbox">�α��� ���� ���� </label>
			</div>
			<div class="button">
				<input type="button" value="�α���" class="button"
					onclick="javascript:login();" />
			</div>
			<div class="info">
				<a class="idsearch" href="#" target="_blank">M!Plan ����ã��</a> <a
					class="passsearch" href="#" target="_blank">M!Plan ��й�ȣã��</a>
			</div>
		</form>
	</div>
</body>
</html>
