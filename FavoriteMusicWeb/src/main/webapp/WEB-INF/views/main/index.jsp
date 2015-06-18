<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Favorite Music</title>
<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />

<style>
.ui-autocomplete {
	position: absolute;
	cursor: default;
	height: 200px;
	overflow-y: scroll;
	overflow-x: hidden;
}
</STYLE>
<script type="text/javascript">
$(document).ready(function() {
$("#testText").autocomplete({
source : function(request, response) {
$.ajax({
url : "/web/search",
type : "post",
dataType : "json",
data : {
	term : request.term,
	param1 : "param1 Value",
	param2 : "param2 Value"
	},
	contentType : "application/x-www-form-urlencoded; charset=UTF-8",
	data : request,
	success : function(data) {
		var result = data;
		response(result);
		},
		error : function(data) {
			alert("������ �߻��Ͽ����ϴ�.")
			}
		});
		}
		});
		});

</script>
<link href="resources/main/main.css" rel="stylesheet" type="text/css">
<link href="resources/main/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/main/iCheck/square/blue.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/main/css/_all-skins.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/main/music.css" rel="stylesheet" type="text/css">
<link href="resources/main/modal.css" rel="stylesheet" type="text/css">

<script src="resources/main/modalLayer.js" type="text/javascript">
</script>
<script src="resources/main/bootstrap/js/bootstrap.min.js"
	type="text/javascript">
</script>
<script src="resources/main/iCheck/icheck.min.js" type="text/javascript"></script>
<script src="resources/main/main.js" type="text/javascript">
</script>
</head>
<body>

	<!-- ���â �α��� ���̾ƿ� -->
	<div class="modal" id="modallogin">
		<div class="login">
			<div class="login-box-body">
				<form action="#" method="post">
					<div class="form-group has-feedback">
						<input type="text" class="form-control" placeholder="���̵�" /> <span
							class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control" placeholder="�н�����" />
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-8">
							<div class="checkbox icheck">
								<label> <input type="checkbox"> ���̵� ����
								</label>
							</div>
						</div>
						<div class="col-xs-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat">�α���</button>
						</div>
					</div>
				</form>
					<button type="button" class="closeModalLayer" data-dismiss="modal"
						aria-hidden="true" onClick="removeModal()">&times;</button>
			
			</div>
		</div>
	</div>

	<!-- ���â �α��� ���̾ƿ� ����-->

	<div id="header">
		<!-- LOGO -->
		<div class="inner_wrap">
			<div id="logo">
				<a href="/web" class="logoimg">Favorite Music</a>
			</div>
			<div class="search">
				<span class="input-group margin">
						<input type="text" id="testText" class="form-control"
							placeholder="[���� & ����] �˻� �ϸ� �˴ϴ�."> <span
							class="input-group-btn">
							<button class="btn btn-info btn-flat" type="button">�˻�</button>
						</span>
				</span>
			</div>
			<div class="btjoin">
				<button class="btn btn-block btn-primary">ȸ������</button>
			</div>
			<div class="btlogin">
				<button class="btn btn-block btn-danger" id="openmodal">�α���</button>
			</div>

			<div class="nav">
				<ul>
					<li class="nav_0"><a href="#">Chart</a></li>
					<li class="nav_1"><a href="#">New</a></li>
					<li class="nav_2"><a href="#">All</a></li>
					<li class="nav_3"><a href="#">Radio</a></li>
					<li class="nav_4"><a href="/web/fileuploadsingle">Notice</a></li>
					<li class="nav_5"><a href="/web/jquery">Faq</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Start Center -->
	<div id="center">
		<!-- LOGO -->
		<div class="center_wrap">
			<div class="slider">
				<div class="box-body">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"
								class=""></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"
								class=""></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img
									src="http://placehold.it/900x500/39CCCC/ffffff&text=I+Love+Bootstrap"
									alt="First slide">
								<div class="carousel-caption">First Slide</div>
							</div>
							<div class="item">
								<img
									src="http://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap"
									alt="Second slide">
								<div class="carousel-caption">Second Slide</div>
							</div>
							<div class="item">
								<img
									src="http://placehold.it/900x500/f39c12/ffffff&text=I+Love+Bootstrap"
									alt="Third slide">
								<div class="carousel-caption">Third Slide</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
			</div>

			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">�α���</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="login">
						<div class="login-box-body">
							<form action="#" method="post">
								<div class="form-group has-feedback">
									<input type="text" class="form-control" placeholder="���̵�" /> <span
										class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<input type="password" class="form-control" placeholder="�н�����" />
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<div class="col-xs-8">
										<div class="checkbox icheck">
											<label> <input type="checkbox"> ���̵� ����
											</label>
										</div>
									</div>
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="submit"
											class="btn btn-primary btn-block btn-flat">�α���</button>
									</div>
									<!-- /.col -->
								</div>
							</form>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Favorite Music ����</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i
							class="fa fa-envelope-o"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">����������</span> <span
								class="info-box-number">10,000,000��</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->

					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i
							class="fa fa-envelope-o"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">���� ä�μ�</span> <span
								class="info-box-number">20��</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->

					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i
							class="fa fa-envelope-o"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">���� ��ϵ� ������</span> <span
								class="info-box-number">1,240��</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->

					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i
							class="fa fa-envelope-o"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">�� ������</span> <span
								class="info-box-number">120,020��</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
			</div>
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">��������</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="notice">
						<div class="notice">
							<dl class="noticelist">
								<dd>
									<ul id="mainnoticelist">
										<li><a href="#">Hellomplan ��ǥ</a></li>
										<li><a href="#">[��������] 06/10 ��������</a></li>
										<li><a href="#">�� ���񽺴� �ȵ���̵� �ۿ����� ���� ���</a></li>
										<li><a href="#">���ο� Hello M!Plan ����</a></li>
										<li><a href="#">���ο� Hello M!Plan ����</a></li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Center -->
	<!-- Start Footer -->
	<div id="footer">
		<div class="footerwarp" id="footerwarp">
			<a href="#" class="footersize">Favorite Music</a>
			<div class="footerlist">
				<ul id="footercompany">
					<li><a href="#">ȸ��Ұ�</a></li>
					<li><a href="#">�̿���</a></li>
					<li><a href="#">����������ȣ��å</a></li>
					<li><a href="#">��������</a></li>
					<li><a href="#">�̸��Ϲ��ܼ����ź�</a></li>
					<li><a href="#">������</a></li>
					<li><a href="#">ã�ƿ��ô� ��</a></li>
				</ul>
			</div>
			<div class="footerlist2">
				<ul id="footercompany">
					<li>����ڵ�Ϲ�ȣ : 000-00-0000</li>
					<li>����ǸŽŰ��ȣ : 2015-���**-0101</li>
					<li>������������å���� : M!Plan</li>
					<li>��ǥ�̻� : ������</li>
					<li id="company-info">VM! - Favorite Music�� <br /> ��
						Copyright M!Plan All Rights Reserved. 1997~2015, �� Copyright
						M!Plan Lap All Rights Reserved. 2009~2015<br />
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
