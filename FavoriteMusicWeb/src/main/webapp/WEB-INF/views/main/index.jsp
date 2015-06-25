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
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

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
<link href="resources/test/css/main.css" rel="stylesheet" type="text/css">
<link href="resources/test/css/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/test/css/modal.css" rel="stylesheet" type="text/css">
<script src="resources/test/js/modalLayer.js" type="text/javascript"></script>
<script src="resources/test/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/test/js/main.js" type="text/javascript"></script>
</head>
<body>

	<!-- ���â �α��� ���̾ƿ� -->
	<div class="modal" id="modallogin">
      <div class="login">
        <div class="login-box-body">
          <h2><strong>�α���</strong></h2>
        <form action="j_spring_security_check" method="post">
            <div class="form-group has-feedback">
              <input type="text" class="form-control" name="j_username" placeholder="���̵�" />
              <span
										class="glyphicon glyphicon-user form-control-feedback"></span> </div>
            <div class="form-group has-feedback">
              <input type="password" class="form-control" name="j_password" placeholder="�н�����" />
              <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
            <div class="row">
              <div class="col-xs-8">
                <div class="checkbox icheck">
                  <label>
                    <input type="checkbox">
                    ���̵� ���� </label>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat">�α���</button>
              </div>
              <div class="userinfo">
                <ul class="infolist">
                  <li><a href="#" class="userlink">ȸ������</a> <span class="textbar"></span> </li>
                  <li><a href="#" class="userlink">����ã��</a> <span class="textbar"></span> </li>
                  <li><a href="#" class="userlink">��й�ȣã��</a></li>
                </ul>
              </div>
              <!-- /.col --> 
            </div>
          </form>
          <button type="button" class="closeModalLayer" data-dismiss="modal"
						aria-hidden="true" onClick="removeModal()">&times;</button>
        </div>
	</div>
	</div>

	<!-- ���â �α��� ���̾ƿ� ����-->
<!-- Header ���κ� -->
<div id="header">
  <div id="headerwrap"></div>
  <div class="top"> 
    <!-- �ΰ� ���� -->
    <div id="logo"> <a href="#" class="logoimg">Favorite Music</a> </div>
    <!-- �ΰ� ���� --> 
    <!-- search -->
    <div class="search"> <span class="input-group margin">
      <input type="text" id="testText" class="form-control" placeholder="[���� & ����] �˻� �ϸ� �˴ϴ�.">
      <span class="input-group-btn">
      <button class="btn btn-info btn-flat" type="button">�˻�</button>
      </span> </span> </div>
    <!-- �˻� ���� --> 
    <!-- �α��� ����-->
    <div class="btjoin">
      <button class="btn btn-block btn-primary">ȸ������</button>
    </div>
    <div class="btlogin">
      <button class="btn btn-block btn-danger" id="openmodal">�α���</button>
    </div>
    <!-- �α��� ����--> 
    <!-- �޴� ���� -->
    <div class="nav">
      <ul>
        <li class="nav_0"><a href="#">������Ʈ</a></li>
        <li class="nav_1"><a href="#">�ֽ�����</a></li>
        <li class="nav_2"><a href="#">�帣����</a></li>
        <li class="nav_3"><a href="#">����</a></li>
        <li class="nav_4"><a href="#">��������</a></li>
        <li class="nav_5"><a href="#">FAQ</a></li>
        <li class="nav_6"><a href="#">1:1</a></li>
        <li class="nav_7"><a href="#">1:1</a></li>
        <li class="nav_8"><a href="#">1:1</a></li>
      </ul>
    </div>
    <!-- �޴����� --> 
  </div>
</div>
<!-- end header --> 
<!-- center -->
<div id="center">
  <div class="centerwrap">
    <div class="centertab"> </div>
    <!-- �ٹ� -->
    <div class="album">
      <div class="musicList albumList">
        <h2><strong>�ֽžٹ�</strong></h2>
        <h3 class ="on"> <a href="#" class="musicgroup">����</a> <span class="textbar"></span><a href="#" class="musicgroup">����</a> <span class="textbar"></span> <a href="#" class="musicgroup">��</a> <span class="textbar"></span> <a href="#" class="musicgroup">J-POP</a></h3>
        <ul class="thumbs">
            <li><a href="#thumb1" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg);">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb2" class="thumbnail" style="background-image: url(resources/test/img/465226.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb3" class="thumbnail" style="background-image: url(resources/test/img/465266.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb4" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb5" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb6" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>POP</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb7" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>����</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb8" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
        </ul>
      </div>
    </div>
    <!-- �̱� -->
    <div class="album">
      <div class="musicList albumList">
        <h2><strong>�ֽ�����</strong></h2>
         <h3 class ="on"> <a href="#" class="musicgroup">����</a> <span class="textbar"></span><a href="#" class="musicgroup">����</a> <span class="textbar"></span> <a href="#" class="musicgroup">��</a> <span class="textbar"></span> <a href="#" class="musicgroup">J-POP</a></h3>
        <ul class="thumbs">
          <li><a href="#thumb1" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg);">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb2" class="thumbnail" style="background-image: url(resources/test/img/465226.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb3" class="thumbnail" style="background-image: url(resources/test/img/465266.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb4" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb5" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb6" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>POP</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb7" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>����</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb8" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
        </ul>
      </div>
    </div>
    <!-- ���� -->
    <div class="album">
      <div class="musicList albumList">
        <h2><strong>����</strong></h2>
        <ul class="thumbs">
           <li><a href="#thumb1" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg);">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb2" class="thumbnail" style="background-image: url(resources/test/img/465226.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb3" class="thumbnail" style="background-image: url(resources/test/img/465266.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb4" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb5" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb6" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>POP</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb7" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>����</h4>
            <span class="description">Get the latest technologies</span></a> </li>
          <li><a href="#thumb8" class="thumbnail" style="background-image: url(resources/test/img/462544.jpg)">
            <h4>AllNew</h4>
            <span class="description">Get the latest technologies</span></a> </li>
        </ul>
      </div>
    </div>
    <!-- ��Ʈ -->
    <div class = "subcenter">
      <div class="login">
        <div class="login-box-body">
          <h2><strong>�α���</strong></h2>
       <form action="j_spring_security_check" method="post">
            <div class="form-group has-feedback">
             	<input type="text" class="form-control" placeholder="���̵�" name="j_username"/> 
              <span class="glyphicon glyphicon-user form-control-feedback"></span> </div>
            <div class="form-group has-feedback">
          	<input type="password" class="form-control" placeholder="�н�����" name="j_password"/>
              <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
            <div class="row">
              <div class="col-xs-8">
                <div class="checkbox icheck">
                 <label> <input type="checkbox" id="idcheck"> ���̵� ����
											</label>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat">�α���</button>
              </div>
              <div class="userinfo">
                <ul class="infolist">
                  <li><a href="#" class="userlink">ȸ������</a> <span class="textbar"></span> </li>
                  <li><a href="#" class="userlink">����ã��</a> <span class="textbar"></span> </li>
                  <li><a href="#" class="userlink">��й�ȣã��</a></li>
                </ul>
              </div>
              <!-- /.col --> 
            </div>
          </form>
        </div>
      </div>
      <!-- ���� -->
      <div class="infomation">
        <div class="box-body">
          <h2><strong>����</strong></h2>
          <div class="info-box"> <span class="info-box-icon"><i
							class="fa fa-music"></i></span>
            <div class="info-box-content"> <span class="info-box-text">����������</span> <span
								class="info-box-number">10,000,000��</span> </div>
            <!-- /.info-box-content --> 
          </div>
          <!-- /.info-box -->
          
          <div class="info-box"> <span class="info-box-icon"><i
							class="fa fa-play-circle"></i></span>
            <div class="info-box-content"> <span class="info-box-text">���� ä�μ�</span> <span
								class="info-box-number">20��</span> </div>
            <!-- /.info-box-content --> 
          </div>
          <!-- /.info-box -->
          
          <div class="info-box"> <span class="info-box-icon"><i
							class="fa fa-cloud-upload"></i></span>
            <div class="info-box-content"> <span class="info-box-text">���� ��ϵ� ������</span> <span
								class="info-box-number">1,240��</span> </div>
            <!-- /.info-box-content --> 
          </div>
          <!-- /.info-box -->
          
          <div class="info-box"> <span class="info-box-icon"><i
							class="fa  fa-users"></i></span>
            <div class="info-box-content"> <span class="info-box-text">�� ������</span> <span
								class="info-box-number">120,020��</span> </div>
          </div>
        </div>
      </div>
      <!-- �������� -->
      <div class="noticelist">
      <h2><strong>��������</strong></h2>
        <ul id="notice">
          <li><a href="#">[����] Favorite Music �׽�Ʈ��</a></li>
          <li><a href="#">[�ȳ�] Favorite Music App</a></li>
          <li><a href="#">[�ȳ�] Favorite Music ���� ����</a></li>
          <li><a href="#">[�ȳ�] Favorite Music ȸ�� ����</a></li>
          <li><a href="#">[����] Favorite Music ��� �߰� ����</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- end center --> 
<!-- footer -->
<div id="footer">
  <div class="footerwarp">
    <div id="company"> <a href="#" class="footersize">Favorite Music</a></div>
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
        <li> ����ڵ�Ϲ�ȣ : 000-00-0000</li>
        <li> ����ǸŽŰ��ȣ : 2015-���**-0101</li>
        <li> ������������å���� : M!Plan </li>
        <li> ��ǥ�̻� : ������ </li>
        <li id="company-info"> VM! - Favorite Music�� <br />
          �� Copyright M!Plan All Rights Reserved. 1997~2015, �� Copyright M!Plan Lap All Rights Reserved. 2009~2015<br />
        </li>
      </ul>
    </div>
  </div>
</div>
<!-- end footer -->
</body>
</html>

