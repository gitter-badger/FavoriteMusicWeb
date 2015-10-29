<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Favorite Music</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"
	type="text/javascript"></script>
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
	$(document)
			.ready(
					function() {
						$("#searchname")
								.autocomplete(
										{
											source : function(request, response) {
												$
														.ajax({
															url : "/web/editsearch",
															type : "post",
															dataType : "json",
															data : {
																term : request.term,
																param1 : "param1 Value",
																param2 : "param2 Value"
															},
															contentType : "application/x-www-form-urlencoded; charset=UTF-8",
															data : request,
															success : function(
																	data) {
																var result = data;
																response(result);
															},
															error : function(
																	data) {
																alert("에러가 발생하였습니다.")
															}
														});
											}
										});
					});
</script>
<link href="resources/test/css/join.css" rel="stylesheet"
	type="text/css">
<link href="resources/test/css/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
	<link href="resources/test/css/modal.css" rel="stylesheet" type="text/css">
<script src="resources/test/js/modalLayer.js" type="text/javascript"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="resources/test/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="resources/test/js/main.js" type="text/javascript"></script>
</head>
<body>
<!-- 모달창 로그인 레이아웃 -->

	<div class="modal" id="modallogin">
      <div class="login">
        <div class="login-box-body">
          <h2><strong>로그인</strong></h2>
        <form action="j_spring_security_check" method="post">
            <div class="form-group has-feedback">
              <input type="text" class="form-control" name="j_username" placeholder="아이디" />
              <span
										class="glyphicon glyphicon-user form-control-feedback"></span> </div>
            <div class="form-group has-feedback">
              <input type="password" class="form-control" name="j_password" placeholder="패스워드" />
              <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
            <div class="row">
            
              <!-- /.col -->
              <div class="col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
              </div>
          
              <!-- /.col --> 
            </div>
          </form>
          <button type="button" class="closeModalLayer" data-dismiss="modal"
						aria-hidden="true" onClick="removeModal()">&times;</button>
        </div>
	</div>
	</div>
	<!-- 모달창 로그인 레이아웃 종료-->
	<!-- Header 윗부분 -->
	<div id="header">
  <div class="top"> 
    <!-- 로고 시작 -->
    <div id="logo"> <a href="/web" class="logoimg">Favorite Music</a> </div>
    <!-- 로고 종료 --> 
    <!-- search -->
    <div class="search"> <span class="input-group margin">
      <input type="text" class="form-control" placeholder="[가수 & 제목] 검색 하면 됩니다.">
      <span class="input-group-btn">
      <button class="btn btn-info btn-flat" type="button">검색</button>
      </span> </span> </div>
    <!-- 검색 종료 --> 
    <!-- 로그인 시작-->
    <div class="btjoin">
      <button class="btn btn-block btn-primary">회원가입</button>
    </div>
    <div class="btlogin">
      <button class="btn btn-block btn-danger" id="openmodal">로그인</button>
    </div>
    <!-- 로그인 종료--> 
  </div>
</div>
<!-- end header --> 
<!-- center -->
<div id="center">
  <div class="centerwrap">
    <div class="centertab"> </div>
    <div class="content">
      <div class="text">
        <h2>회원등록</h2>
      </div>
       <div class="form-group has-feedback">
              <input type="text" class="form-control" placeholder="아이디 등록" />
              <span
										class="glyphicon glyphicon-user form-control-feedback"></span> </div>
            <div class="form-group has-feedback">
                      <input type="text" class="form-control" placeholder="닉네임 등록" />
              <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
              <div class="form-group has-feedback">
              <input type="password" class="form-control" placeholder="패스워드 등록" />
              <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
               
                <div class="form-group has-feedback">
              <input type="password" class="form-control" placeholder="패스워드 재등록" />
              <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
            
      <div class="form-group has-feedback">
              <input type="text" class="form-control" placeholder="이메일 등록" />
        <span class="glyphicon glyphicon-lock form-control-feedback"></span> </div>
          
    
      <div class="text">
        <h2>이용약관</h2>
      </div>
      <div class="textbox box"> 제1장. 총칙
        제 1 조 (목적)
        본 약관은 회원이 (주)네오위즈인터넷(이하 “회사”라 합니다)에서 제공하는 유무선 인터넷 음악포탈 벅스 서비스(이하 '서비스'라 한다)는 bugs.co.kr과 bugscast.com를 모두 포함하는 음악 서비스를 말하며 서비스를 이용함에 있어 회원(벅스 회원 및 벅스캐스트 팬 회원)과 회사간의 권리, 의무 및 책임사항 등 기본적인 사항을 규정함을 목적으로 합니다.
        제 2 조 (약관의 효력 및 변경)
        1. 본 약관은 서비스를 이용하고자 하는 모든 회원에 대하여 그 효력을 발생합니다.
        2. 본 약관의 내용은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지하고, 이에 동의한 회원이 서비스에 가입함으로써 효력이 발생합니다.
        3. 회사는 필요하다고 인정되는 경우 본 약관을 변경할 수 있으며, 약관이 변경된 경우에는 지체 없이 제2항과 같은 방법으로 공지합니다. 다만, 이용자의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 7일전에 공지하며 개정 내용이 이용자에게 불리할 경우에는 30일간 고지합니다.
        4. 이용자는 변경된 약관 사항에 동의하지 않으면 서비스 이용을 중단하고 이용 계약을 해지할 수 있습니다.
        제 3 조 (약관 외 준칙)
        본 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법 등 관계법령 및 회사가 별도로 정한 서비스의 세부이용지침 등의 규정에 의합니다.
        제 4 조 (용어의 정의)
        1. 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
        (1) 회원 : 서비스에 접속하여 본 약관, 서비스 상품약관 및 개인정보 수집 및 이용에 대한 안내에 동의 후 서비스 회원번호 보유하고 벅스 아이디(ID)와 비밀번호(PASSWORD)를 발급 받아 웹,모바일 등의 모든 채널의 서비스를 이용 가능한 고객
        (2) 팬 회원 : 벅스캐스트(bugscast.com) 서비스에 접속하여 본 약관, 서비스 상품약관 및 개인정보 수집 및 이용에 대한 안내에 동의 후 서비스 회원번호 보유하고 벅스 아이디(ID)와 비밀번호(PASSWORD)를 발급 받아 벅스캐스트 서비스를 이용 가능한 고객
        (3) 아티스트회원 : 벅스캐스트(bugscast.com) 서비스에서 개인정보를 제공하여 회원등록을 한 고객으로서, 회사에서 제공하는 판매서비스를 이용할 수 있는 고객
        (4) 아이디(ID) : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 영문자 또는 숫자로 생성하여 이용 가능
        (5) 비밀번호(PASSWORD) : 회원의 정보 보호를 위해 회원 자신이 설정한 영문자, 숫자 또는 특수문자를 사용하여 최저 6자에서 최대 20자까지의 조합으로 설정 가능
        (6) 운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사가 선정한 자
        (7) 서비스 중지 : 정상 이용 중 회사가 정한 일정한 요건에 따라 일정기간 동안 서비스의 제공을 중지하는 것
        (8) 캐시 : 회사가 벅스(www.bugs.co.kr) 서비스에 한하여 유료로 제공하는 각종 서비스와 디지털 컨텐츠를 이용 또는 구입하는데 사용할 수 있는 유무선 인터넷 상의 사이버머니
        2. 본 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계 법령 및 서비스별 안내에서 정하는 바에 의합니다.
        제 2 장 서비스 이용 계약
        제 5 조(이용 계약의 성립)
        1. 약관, 서비스 상품약관 및 개인정보 수집 및 이용에 대한 안내에 대하여 고객이 동의를 선택한 후 "동의" 버튼을 누르면 약관에 동의하는 것으로 간주됩니다.
        2. 이용 계약은 고객의 이용 신청에 대하여 회사의 승낙이 고객의 컴퓨터에 입력된 때에 성립합니다.
        제 6 조(이용 신청)
        이용 신청은 서비스의 이용자 등록 화면에서 고객이 다음 사항을 가입신청 양식에 기록하는 방식으로 행합니다.
        1. 아이디(ID)
        2. 비밀번호(PASSWORD)
        3. 기타 회사가 필요하다고 인정하는 항목
        제 7 조(이용신청의 승낙)
        회사는 제6조에서 정한 사항을 정확히 기재하여 이용 신청한 고객에 대하여 서비스 이용 신청을 승낙합니다.
        제 8 조(이용신청에 대한 승낙의 제한)
        1. 회사는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않을 수 있습니다.
        (1) 기술상 서비스 제공이 불가능한 경우
        (2) 실명이 아니거나, 다른 사람의 명의사용 등 이용자 등록 시 허위로 신청하는 경우
        (3) 이용자 등록 사항을 누락하거나 오기하여 신청하는 경우
        (4) 사회의 안녕질서 또는 미풍양속을 저해하거나, 저해할 목적으로 신청한 경우
        (5) 제24조 제2항에 의하여 이전에 회원 자격을 상실한 적이 있는 경우. 다만, 동 자격 상실 이후 1년 이상 경과한 자로 회사의 회원 재가입 승낙을 받은 경우는 예외로 합니다.
        (6) 기타 회사가 정한 이용신청 요건이 만족되지 않았을 경우
        2. 회원의 자격 혹은 나이에 따라 서비스 이용의 일부가 제한될 수 있습니다.
        제 9 조(계약 사항의 변경)
        회원은 이용 신청 시 기재한 사항이 변경되었을 경우 회사가 정한 별도의 이용 방법으로 정해진 양식 및 방법에 의하여 수정하여야 합니다.
        제3장 서비스 이용
        제 10 조(서비스의 이용 개시)
        1. 회사는 회원의 이용 신청을 승낙한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다.
        2. 회사의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에 공지하거나 회원에게 이를 통지합니다.
        제 11 조(서비스의 이용시간)
        1. 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 회사의 업무 상이나 기술상의 이유로 서비스가 일지 중지될 수 있고, 또한 운영상의 목적으로 회사가 정한 기간 동안에는 서비스가 일시 중지될 수 있습니다. 이러한 경우 회사는 사전 또는 사후에 이를 공지합니다.
        2. 회사는 서비스를 일정범위로 분할하여 각 범위별로 이용 가능한 시간을 별도로 정할 수 있으며 이 경우 그 내용을 공지합니다.
        제 12 조(서비스의 변경 및 중지)
        1. 회사는 변경될 서비스의 내용 및 제공일자를 제21조에서 정한 방법으로 회원에게 통지하고 서비스를 변경하여 제공할 수 있습니다.
        2. 회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
        (1) 서비스용 설비의 보수 등 공사로 인한 부득이한 경우
        (2) 회원이 회사의 영업활동을 방해하는 경우
        (3) 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우
        (4) 서비스 제공업자와의 계약 종료 등과 같은 회사의 제반 사정으로 서비스를 유지할 수 없는 경우
        (5) 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우
        3. 제2항에 의한 서비스 중단의 경우에는 회사가 제21조 제2항에서 정한 방법으로 이용자에게 통지합니다. 다만, 회사가 통제할 수 없는 사유로 인한 서비스의 중단 (운영자의 고의, 과실이 없는 디스크 장애, 시스템 다운 등)으로 인하여 사전 통지가 불가능한 경우에는 사후에 통지할 수 있습니다.
        4. 회사는 서비스의 변경, 중지로 발생하는 문제에 대해서는 어떠한 책임도 지지 않습니다.
        제 13 조(정보의 제공 및 광고의 게재)
        1. 회사는 서비스를 운영함에 있어 각종 정보를 서비스 화면에 게재하거나 e-mail(전자우편) 및 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.
        2. 회사는 서비스의 운영과 관련하여 홈페이지, 서비스 화면, e-mail(전자우편) 등에 광고 등을 게재할 수 있습니다.
        3. 회원이 서비스상에 게재되어 있는 광고를 이용하거나 서비스를 통한 광고주의 판촉활동에 참여하는 등의 방법으로 교신 또는 거래를 하는 것은 전적으로 회원과 광고주 간의 문제입니다. 만약 회원과 광고주간에 문제가 발생할 경우에도 회원과 광고주가 직접 해결하여야 하며, 이와 관련하여 회사는 어떠한 책임도 지지 않습니다.
        제 14 조(게시물 또는 내용물의 삭제)
        1. 회사는 회원이 게시하거나 전달하는 서비스 내의 모든 내용물(회원간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제할 수 있으며, 이에 대해 회사는 어떠한 책임도 지지 않습니다.
        (1) 회사, 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
        (2) 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등의 유포에 해당하는 경우
        (3) 범죄적 행위에 결부된다고 인정되는 내용인 경우
        (4) 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
        (5) 제2항 소정의 세부이용지침을 통하여 회사에서 규정한 게시기간을 초과한 경우
        (6) 회사에서 제공하는 서비스와 관련 없는 내용인 경우
        (7) 불필요하거나 승인되지 않은 광고, 판촉물을 게재하는 경우
        (8) 기타 관계 법령 및 회사의 지침 등에 위반된다고 판단되는 경우
        2. 회사는 게시물에 관련된 세부 이용지침을 별도로 정하여 시행할 수 있으며, 회원은 그 지침에 따라 각 종 게시물(회원간 전달 포함)을 등록하거나 삭제하여야 합니다.
        3. 회원은 서비스를 탈퇴하는 경우 서비스 이용 도중 회원 본인이 직접 작성한 일련의 게시물(작성 등록한 컨텐츠)에 대한 자동 삭제되지 않으므로 삭제를 원하는 경우 탈퇴 이전에 삭제하여야 합니다.
        4. 회사는 원활한 서비스 제공을 위하여 정기적 또는 비정기적으로 과거의 게시물을 삭제할 수 있습니다.
        제 15 조(게시물의 저작권)
        1. 회원이 게시한 게시물은 다음 각 호의 목적에 한하여 회사가 이용할 수 있으며, 이는 이용계약이 해지된 이후에도 지속적으로 이용할 수 있습니다.
        (1) 게시물 검색결과 노출
        (2) 서비스 내에서 서비스 및 관련 프로모션 등에 노출
        (3) 제(1)호, 제(2)호와 관련하여 필요한 범위 내에서 일부 수정, 복제, 편집 이용
        (4) 기타 서비스 홍보의 목적
        2. 회사는 회원 또는 이해관계가 있는 제3자로부터 게시물의 검색결과 노출 중단, 삭제, 비공개 조치 등의 명시적 요청이 있을 경우에는 그에 따른 조치를 합니다.
        3. 회사가 제1항 이외의 목적으로 회원의 게시물을 이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 회원의 동의를 얻습니다.
        4. 회사는 회원이 서비스 내에 게시한 게시물이 타인의 저작권, 프로그램 저작권 등을 침해하더라도 이에 대한 민,형사상의 책임을 부담하지 않습니다. 만일 회원이 타인의 저작권, 프로그램 저작권 등을 침해하였음을 이유로 회사가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 회원은 회사의 면책을 위하여 노력하여야 하며, 회사가 면책되지 못한 경우 회원은 그로 인해 회사에 발생한 모든 손해를 부담하여야 합니다.
        5. 회사는 회원이 이용계약을 해지하거나 적법한 사유로 이용계약이 해지 된 경우 해당 회원이 게시하였던 게시물을 삭제할 수 있습니다.
        6. 회사가 작성한 저작물에 대한 저작권은 회사에 귀속합니다.
        7. 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 영리목적으로 이용하거나 제3자에게 이용하게 할 수 없으며, 게시물에 대한 저작권 침해는 관계 법령의 적용을 받습니다.
        제 16 조(대리 행위 및 보증의 부인)
        벅스캐스트(bugscast.com) 서비스에서 회사는 효율적인 서비스를 위한 시스템 운영 및 관리 책임만을 부담하고 회사가 제공하는 시스템을 통하여 이루어지는 구매고객과 아티스트 회원 간의 거래와 관련하여 구매회사 또는 판매의사의 존부 및 진정성, 콘텐츠의 품질, 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성 등 일체에 대하여 보증하지 아니하며 이와 관련한 일체의 위험과 책임은 해당 컨텐츠를 등록한 아티스트 회원이 전적으로 부담합니다.
        또한 아티스트 회원이 등록한 컨텐츠 거래와 관련하여 회원을 대리하지 아니하고, 해당 컨텐츠를 등록한 아티스트 회원이 거래에 대한 직접적인 책임을 부담합니다.
        제 17 조(서비스상품 약관)
        서비스 이용을 위하여 서비스상품 약관, 벅스플레이어 약관 등 별도의 약관이 존재할 수 있습니다. 추가되는 서비스상품에 따라 별도의 약관이 존재할 수 있으며, 이용약관과 각 개별 약관의 내용이 상충될 경우 각 개별 약관이 우선됩니다.
        제 4 장 계약당사자의 의무
        제 18 조(회사의 의무)
        1. 회사는 서비스 제공과 관련하여 알고 있는 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 관계법령에 의한 수사상의 목적으로 관계기관으로부터 요구 받은 경우나 정보통신윤리위원회의 요청이 있는 경우 등 법률의 규정에 따른 적법한 절차에 의한 경우에는 그러하지 않습니다.
        2. 제1항의 범위 내에서, 회사는 업무와 관련하여 회원의 사전 동의 없이 회원 전체 또는 일부의 개인 정보에 관한 통계자료를 작성하여 이를 사용할 수 있고, 이를 위하여 회원의 컴퓨터에 쿠키를 전송할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있으며, 쿠키의 설정 변경에 의해 서비스 이용이 변경되는 것은 회원의 책임입니다.
        3. 회사는 서비스와 관련한 회원의 불만사항이 접수되는 경우 이를 신속하게 처리하여야 하며, 신속한 처리가 곤란한 경우 그 사유와 처리 일정을 서비스 화면에 게재하거나 e-mail(전자우편) 등을 통하여 동 회원에게 통지합니다.
        4. 회사가 제공하는 서비스로 인하여 회원에게 손해가 발생한 경우 그러한 손해가 회사의 고의나 중과실에 기해 발생한 경우에 한하여 회사에서 책임을 부담하며, 그 책임의 범위는 통상 손해에 한합니다.
        5. 회사는 정보통신망 이용촉진 및 정보보호에 관한 법률, 통신비밀보호법, 전기통신사업법 등 서비스의 운영, 유지와 관련 있는 법규를 준수합니다.
        제 19 조(회원의 의무)
        1. 회원은 서비스를 이용할 때 다음 각 호의 행위를 하여서는 아니 됩니다.
        (1) 이용 신청 또는 변경 시 허위 사실을 기재하거나, 다른 회원의 아이디(ID) 및 비밀번호를 도용, 부정하게 사용하는 행위
        (2) 회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 행위
        (3) 타인의 명예를 손상시키거나 불이익을 주는 행위
        (4) 게시판 등에 음란물을 게재하거나 음란사이트를 연결(링크)하는 행위
        (5) 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위
        (6) 스트리밍 또는 다운로드를 통하여 제공받은 음원 또는 영상저작물을 영리를 목적으로 하는 영업장과 매장 등에서 제3자에게 재생 등의 방법으로 이용하는 행위
        (7) 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형, 음성 등을 타인에게 유포하는 행위
        (8) 서비스와 관련된 설비의 오 동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위
        (9) 서비스 운영을 고의로 방해하거나 서비스의 안정적 운영을 방해할 수 있는 정보 및 수신자의 명시적인 수신거부의사에 반하여 광고성 정보를 전송하는 행위
        (10) 타인으로 가장하는 행위 및 타인과의 관계를 허위로 명시하는 행위
        (11) 다른 회원의 개인정보를 수집, 저장, 공개하는 행위
        (12) 자기 또는 타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
        (13) 재물을 걸고 도박하거나 사행행위를 하는 행위
        (14) 윤락행위를 알선하거나 음행을 매개하는 내용의 정보를 유통시키는 행위
        (15) 수치심이나 혐오감 또는 공포심을 일으키는 말이나 음향, 글이나 화상 또는 영상을 계속해서 상대방에게 도달하게 함으로써 상대방의 일상적 생활을 방해하는 행위
        (16) 서비스에 게시된 정보를 변경하는 행위
        (17) 관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 포함)의 전송 또는 게시 행위
        (18) 회사의 직원이나 운영자를 가장하거나 사칭하여 또는 타인의 명의를 도용하여 글을 게시하거나 메일을 발송하는 행위
        (19) 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 e-mail(전자우편)으로 발송하는 행위
        (20) 스토킹(stalking) 등 다른 회원을 괴롭히는 행위
        (21) 기타 불법적이거나 부당한 행위
        2. 회원은 관계 법령, 본 약관의 규정, 이용안내 및 서비스상에 공지한 주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다.
        3. 회원은 회사에서 공식적으로 인정한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업 활동을 할 수 없으며 특히 해킹, 광고를 통한 수익, 음란사이트를 통한 상업행위, 상용소프트웨어 불법배포 등을 할 수 없습니다. 이를 위반하여 발생한 영업 활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 회사가 책임을 지지 않으며, 회원은 이와 같은 행위와 관련하여 회사에 대하여 손해배상 의무를 집니다.
        4. 회원은 서비스 이용을 위해 등록할 경우 현재의 사실과 일치하는 완전한 정보(이하 "등록정보")를 제공하여야 합니다.
        5. 회원은 등록정보에 변경사항이 발생할 경우 즉시 갱신하여야 합니다. 회원이 제공한 등록정보 및 갱신한 등록정보가 부정확할 경우, 기타 회원이 본 조 제1항에 명시된 행위를 한 경우에 회사는 본 약관 제24조에 의해 회원의 서비스 이용을 제한 또는 중지 할 수 있습니다.
        제 20 조(회원 아이디(ID)와 비밀번호(PASSWORD) 관리에 대한 의무와 책임)
        1. 회사는 사이트 내에서 일부 서비스 신청 시 이용요금을 부과할 수 있으므로, 회원은 회원 아이디(ID) 및 비밀번호(PASSWORD) 관리를 철저히 하여야 합니다.
        2. 회원 아이디(ID)와 비밀번호(PASSWORD)의 관리 소홀, 부정 사용에 의하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있으며, 회사의 시스템 고장 등 회사의 책임 있는 사유로 발생하는 문제에 대해서는 회사가 책임을 집니다.
        3. 회원은 본인의 아이디(ID) 및 비밀번호(PASSWORD)를 제3자에게 이용하게 해서는 안되며, 회원 본인의 아이디(ID) 및 비밀번호(PASSWORD)를 도난 당하거나 제3자가 사용하고 있음을 인지하는 경우에는 바로 회사에 통보하고 회사의 안내가 있는 경우 그에 따라야 합니다.
        4. 회원의 아이디(ID)는 회사의 사전 동의 없이 변경할 수 없습니다.
        제 21 조(회원에 대한 통지)
        1. 회원에 대한 통지를 하는 경우 회사는 회원이 등록한 e-mail(전자우편) 주소 또는 SMS 등 기타의 방법으로 회원에게 이를 통지 할 수 있습니다.
        2. 회사는 불특정 다수 회원에 대한 통지의 경우 서비스 공지게시판 등에 게시함으로써 개별 통지에 갈음할 수 있습니다.
        제 22 조(이용자의 개인정보보호)
        회사는 관련법령이 정하는 바에 따라서 회원 등록정보를 포함한 회원의 개인정보를 보호하기 위하여 노력합니다. 회원의 개인정보보호에 관해서는 관련법령 및 회사가 정하는 "개인정보취급방침"에 정한 바에 의합니다.
        제 23 조(개인정보의 위탁)
        회사는 수집된 개인정보의 취급 및 관리 등의 업무(이하 "업무")를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 회사가 선정한 회사에 위탁할 수 있습니다.
        제 5 장 계약해지 및 이용제한
        제 24 조(계약해제ㆍ해지 및 이용제한)
        1. 회원이 서비스 이용계약을 해지하고자 할 경우에는 본인이 웹사이트 상에서 또는 전화, 전자우편, 모사전송 등 회사가 정한 별도의 이용방법으로 회사에 해지신청을 하여야 합니다.
        2. 회사는 회원이 제19조에 규정한 회원의 의무를 이행하지 않을 경우 사전 통지 없이 즉시 이용계약을 해지하거나 또는 서비스 이용을 중지할 수 있습니다.
        3. 회원이 이용계약을 해지하고자 하는 경우에는 회원 본인이 이용계약 해지신청(회원탈퇴)을 하여야 합니다. 이용해지 신청은 [정보관리>개인정보관리>회원탈퇴]를 통하여 언제든지 할 수 있습니다.
        4. 회사는 회원이 이용계약을 체결하여 아이디(ID)와 비밀번호(PASSWORD)를 부여 받은 후에라도 회원의 자격에 따른 서비스 이용을 제한할 수 있습니다.
        5. 회사는 회원 가입 후 6개월 동안 서비스 사용 이력이 없는 회원에 대해 사용의사를 묻는 고지를 하고, 회사가 정한 기한 내에 답변이 없는 경우 이용 계약을 해지할 수 있습니다.
        6. 본 조 제2항 및 제4항, 제5항의 회사 조치에 대하여 회원은 회사가 정한 절차에 따라 이의 신청을 할 수 있습니다.
        7. 본 조 제6항의 이의가 정당하다고 회사가 인정하는 경우, 회사는 즉시 서비스의 이용을 재개합니다.
        제 25 조(양도 금지)
        회원은 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게 양도, 증여할 수 없으며 게시물에 대한 저작권을 포함한 모든 권리 및 책임은 이를 게시한 회원에게 있습니다.
        제 6 장 손해배상 등
        제 26 조(손해 배상)
        1. 회원이 본 약관의 규정을 위반함으로 인하여 회사에 손해가 발생하게 되는 경우, 본 약관을 위반한 회원은 회사에 발생하는 모든 손해를 배상하여야 합니다.
        2. 회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책 시켜야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.
        제 27 조(면책사항)
        1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
        2. 회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.
        3. 회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그 밖에 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. 회사는 회원이 사이트에 게재한 정보 • 자료 • 사실의 신뢰도 및 정확성 등 내용에 대하여는 책임을 지지 않습니다.
        4. 회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.
        제 28 조(관할법원)
        1. 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생한 경우, 회사와 회원은 분쟁의 해결을 위해 성실히 협의합니다.
        2. 본 조 제1항의 협의에서도 분쟁이 해결되지 않을 경우 회사의 본사 소재지를 관할하는 법원을 전속 관할법원으로 합니다.
        부칙
        (시행일) 본 약관은 2013년 5월 30일부터 시행합니다.
        (시행일) 본 약관은 2013년 3월 8일부터 시행합니다.
        (시행일) 본 약관은 2013년 1월 3일부터 시행합니다.
        (시행일) 본 약관은 2012년 4월 26일부터 시행합니다.
        (시행일) 본 약관은 2011년 10월 31일부터 시행합니다.
        (시행일) 본 약관은 2009년 9월 24일부터 시행합니다.
        (시행일) 본 약관은 2008년 10월 30일부터 시행합니다.
        (시행일) 본 약관은 2006년 4월17일부터 시행합니다.</div>
      <div class="check" >
        <input id="policy" type="checkbox"/>
        <label for="policy">서비스 이용약관에 동의 합니다.</label>
      </div>
      <div class="content" id="step1">
        <div class="text">
          <h2>서비스 이용약관</h2>
        </div>
        <div class="textbox box">환영합니다!

카카오 서비스를 이용해 주셔서 감사합니다. 다음카카오는 다양한 인터넷과 모바일 서비스(Application)를 여러분이 가장 편안하고 친근하게 이용할 수 있는 방법으로 제공하고 있습니다. 다음카카오는 여러분이 카카오 서비스에 더 가깝게 다가갈 수 있도록 카카오계정을 기반으로 하는 모든 카카오 서비스에 적용될 수 있는 하나의 약관을 마련하였습니다. 여러분이 조금만 시간을 내서 약관을 읽어주신다면, 여러분과 다음카카오는 더욱 가까운 사이가 될 것이라고 믿습니다.

* ‘카카오 서비스’라 함은 (주) 다음카카오가 제공하는 “카카오” 브랜드를 사용하는 서비스를 말합니다. 
다양한 카카오 서비스가 여러분을 찾아갑니다.

다음카카오는 SNS, 게시판 서비스, 온라인 콘텐츠 제공 서비스, 위치기반서비스 등 여러분이 인터넷과 모바일로 즐길 수 있는 다양한 서비스를 제공합니다. 여러분은 스마트폰의 어플리케이션 스토어 등에서 카카오 서비스를 다운받아 설치하거나 직접 PC에 설치하여 카카오 서비스를 이용할 수 있습니다. 그런데 다음카카오는 여러분이 원하는 다양한 서비스를 시시각각 제공하기 때문에 서비스의 자세한 내용은 별도로 알려드릴 수밖에 없습니다. 이러한 다음카카오의 사정을 이해하여 주시길 바라며, 다음카카오도 개별적인 카카오 서비스 이용방법을 어플리케이션 스토어와 각 서비스의 Q&A 센터, 해당 안내 및 고지사항에서 더 상세하게 안내하고 있으니 언제든지 확인하여 주시기 바랍니다.
다음카카오는 여러분이 카카오 서비스를 마음껏 이용할 수 있도록 이에 필요한 소프트웨어의 개인적이고 전 세계적이며 양도불가능하고 비독점적인 무상의 라이선스를 여러분에게 제공합니다. 단, 다음카카오가 여러분에게 다음카카오 상표 및 로고를 사용할 권리를 부여하는 것은 아니라는 점은 잊지 말아주시기 바랍니다.
다음카카오는 더 나은 카카오 서비스를 위하여 서비스에 필요한 소프트웨어의 업데이트 버전을 제공할 수 있습니다. 소프트웨어의 업데이트에는 중요한 기능의 추가 또는 불필요한 기능의 제거 등이 포함되어 있습니다. 여러분들도 카카오 서비스를 즐겁게 이용할 수 있도록 꾸준히 업데이트를 하여 주시기 바랍니다.
다음카카오는 더 나은 카카오 서비스의 제공을 위하여 여러분에게 카카오 서비스의 이용과 관련된 각종 고지, 관리 메시지 및 기타 광고를 비롯한 다양한 정보를 카카오 서비스에 표시하거나 여러분의 메일 계정으로 직접 발송할 수 있습니다.
카카오 서비스 이용 중 시스템 오류 등 문제점을 발견하신다면 언제든지 카카오 고객 센터로 알려주시기 바랍니다.
카카오계정을 이용할 수 있습니다.

카카오계정이란 여러분이 카카오 서비스를 사용하기 위하여 필요한 이메일 주소 및 패스워드 기반의 로그인 계정을 의미합니다. 카카오 서비스를 이용하기 위하여 카카오계정이 필요할 수 있으며, 어떤 카카오 서비스는 카카오계정이 반드시 필요합니다. 카카오계정은 여러분이 약관에 동의하고 여러분의 이메일 주소를 입력하고 패스워드를 등록한 후 필요한 경우 다음카카오가 이메일 주소 또는 전화번호를 인증한 후 승낙하는 절차로 생성됩니다. 물론 여러분이 원한다면 카카오 대화명(닉네임)은 별도로 설정할 수 있습니다.
그런데 다음카카오는 다음카카오가 여러분의 카카오계정을 삭제하였던 경우, 다른 사람의 명의나 이메일 주소 등 개인정보를 이용하여 카카오계정을 생성하려 한 경우, 카카오계정 생성시 필요한 정보를 입력하지 않거나 허위의 정보를 입력한 경우 등에는 여러분의 계정 생성을 승낙하지 않을 수 있습니다. 특히, 여러분이 14세 미만인 경우에는 부모님 등 법정대리인의 동의가 있는 경우에만 계정을 생성할 수 있습니다. 만약, 여러분이 위 조건에 위반하여 계정을 생성한 것으로 판명된 때에는 다음카카오는 즉시 여러분의 카카오 서비스 이용을 중단하거나 카카오계정을 삭제하는 등 적절한 제한을 할 수 있습니다.
카카오계정은 여러분 본인만 이용할 수 있으며, 다른 사람이 여러분의 계정을 이용하도록 허락할 수 없습니다. 그리고 여러분은 다른 사람이 여러분의 카카오계정을 무단으로 사용할 수 없도록 직접 비밀번호를 관리하여야 합니다. 만약 무단 사용이 발견된다면, 카카오 고객 센터를 통하여 다음카카오에게 알려주시기 바라며, 다음카카오는 무단 사용을 막기 위한 방법을 여러분에게 안내하도록 하겠습니다.
여러분은 카카오 서비스 내 설정 화면을 통하여 여러분의 정보를 열람하고 수정할 수 있습니다. 다만, 서비스의 제공 및 관리를 위해 필요한 카카오계정, 전화번호, 단말기 식별번호 등 일부 정보는 수정이 불가능할 수 있습니다. 여러분이 카카오 서비스 이용 신청시 알려주신 내용에 변동이 있을 때, 직접 카카오 서비스에서 수정하거나 이메일, 카카오 고객 센터를 통하여 다음카카오에 알려 주시기 바랍니다.
이점만은 주의하여 주시기 바랍니다.

여러분은 카카오 서비스를 자유롭게 이용할 수 있으며, 여러분이 카카오 서비스를 이용함으로써 더 넓은 세상과 만나는 것이 다음카카오의 보람입니다. 다만, 여러분은 카카오 서비스를 잘못된 방법으로 이용할 수 없다는 점을 잊지 말아주셨으면 합니다.
예를 들어, 여러분은 잘못된 방법으로 카카오 서비스의 제공을 방해하거나 다음카카오가 안내하는 방법 이외의 다른 방법을 사용하여 카카오 서비스에 접근할 수 없습니다. 또한, 다른 카카오 서비스 이용자의 정보를 무단으로 수집, 이용하거나 다른 사람들에게 제공하는 행위도, 카카오 서비스를 영리 목적으로 이용하는 것도, 음란 정보나 저작권 침해 정보 등 공서양속 및 법령에 위반되는 내용의 정보 등을 발송하거나 게시하는 행위도 금지된다는 점을 이해하여 주시기 바랍니다. 그리고 다음카카오의 동의 없이 카카오 서비스 또는 이에 포함된 소프트웨어의 일부를 복사, 수정, 배포, 판매, 양도, 대여, 담보제공하거나 타인에게 그 이용을 허락하는 행위와 소프트웨어를 역설계하거나 소스 코드의 추출을 시도하는 등 카카오 서비스를 복제, 분해 또는 모방하거나 기타 변형하는 행위도 당연히 금지됩니다.
혹시라도 여러분이 관련 법령, 다음카카오의 모든 약관 또는 정책을 준수하지 않는다면, 다음카카오는 여러분의 부정행위를 조사하거나 여러분의 카카오 서비스 이용을 잠시 또는 계속하여 중단할 수도 있습니다. 그 밖에 카카오 서비스의 이용에 관한 자세한 사항은 카카오 운영정책을 참고해 주시기 바랍니다.
여러분의 개인정보를 보호합니다.

여러분의 개인정보의 안전한 취급은 다음카카오에게 있어 가장 중요한 일 중 하나입니다. 여러분의 개인정보는 카카오 서비스의 원활한 제공을 위하여 여러분이 동의한 목적과 범위 내에서만 이용됩니다. 법령에 의하거나 여러분이 별도로 동의하지 아니하는 한 다음카카오가 여러분의 개인정보를 제3자에게 제공하는 일은 결코 없으므로, 안심하셔도 좋습니다. 다음카카오가 여러분의 개인정보를 안전하게 취급하기 위하여 기울이는 노력이나 기타 상세한 사항은 카카오 개인정보 취급방침을 참고하여 주십시오.
콘텐츠의 저작권도 보호합니다.

다음카카오는 여러분의 지적재산권을 존중합니다. 여러분은 사진, 글, 정보, 다음카카오에 대한 의견이나 제안들을 콘텐츠를 카카오 서비스에 게시할 수 있으며, 이러한 콘텐츠에 대한 지적재산권은 당연히 여러분이 계속하여 보유합니다.
다음카카오는 여러분의 콘텐츠가 유용한 정보를 포함하고 있으며, 많은 사람들이 여러분의 콘텐츠에 적법한 절차와 방법으로 접근하는 것이 매우 중요하다고 믿고 있습니다. 여러분이 다음카카오에 콘텐츠를 게시하는 경우, 여러분은 더 나은 카카오 서비스를 위하여 다음카카오 및 다음카카오의 협력사에게 이러한 콘텐츠를 사용, 저장, 복제, 수정, 전달, 공개, 공개적으로 실연, 공개적으로 게시 및 배포할 수 있고 이차적 저작물을 제작할 수 있으며, 다른 이용자에게 사용을 허락할 수 있는 전 세계적이고 영구적인 라이선스를 제공하게 됩니다. 본 라이선스는 여러분이 카카오 서비스의 사용을 중단하거나 카카오계정에서 탈퇴한 후에도 존속하게 됩니다. 다시 한 번 알려드리지만, 본 라이선스에서 여러분이 다음카카오와 협력사에게 부여하는 권리는 카카오 서비스를 운영, 개선, 홍보하고 새로운 카카오 서비스를 개발하기 위한 범위 내에서 사용됩니다.
일부 카카오 서비스에서는 여러분이 제공한 콘텐츠에 접근하거나 이를 삭제하는 방법을 제공할 수 있습니다. 또한 일부 서비스에서는 제공된 콘텐츠에 대한 다음카카오의 사용 범위를 제한하는 설정이 있습니다. 다음카카오의 콘텐츠 사용에 대해 더 자세한 정보가 필요한 경우, 카카오 개인정보 취급방침 또는 각 서비스별 Q&A 센터를 방문해 주시기 바랍니다.
여러분은 다음카카오에 제공한 콘텐츠에 대해 다음카카오에 라이선스를 부여하기 위해 필요한 권리를 보유해야 합니다. 그리고 다시 말씀을 드리지만, 여러분은 음란하거나 폭력적이거나 기타 공서양속 및 법령에 위반하는 콘텐츠를 공개 또는 게시할 수 없습니다.
다음카카오는 여러분의 콘텐츠가 법령 및 카카오 서비스 정책에 위반된다고 판단할 경우, 이를 삭제하거나 게시를 거부할 수 있습니다. 다만 다음카카오가 모든 콘텐츠를 검토할 의무가 있는 것은 아닙니다. 누군가 여러분의 권리를 침해하였다면, 카카오 고객센터를 통해 게시중단요청에 대한 도움을 받으실 수 있습니다.
카카오 서비스에서는 다음카카오가 보유하지 않은 일부 콘텐츠가 표시될 수 있습니다. 그러한 콘텐츠에 대해서는 콘텐츠를 제공한 주체가 단독으로 모든 책임을 부담하게 됩니다.
여러분이 카카오 서비스를 이용하더라도 다른 이용자의 콘텐츠에 대하여 어떠한 권리를 가지게 되는 것은 아닙니다. 여러분이 다른 이용자의 콘텐츠를 사용하기 위하여는 콘텐츠 소유자로부터 별도로 허락을 받아야 합니다.
더 나은 위치기반서비스를 제공합니다.

다음카카오는 여러분의 실생활에 더욱 보탬이 되는 유용한 서비스를 제공하기 위하여 카카오 서비스에 위치기반서비스를 포함시킬 수 있습니다. 
다음카카오의 위치기반서비스는 여러분의 단말기기의 위치정보를 수집하는 위치정보사업자로부터 위치정보를 전달받아 제공하는 무료서비스이며, 구체적으로는 여러분의 친구들과 특정 장소를 공유할 목적으로 여러분의 현재 위치 또는 특정 위치를 지도 이미지 상에 표시하여 제공하거나 관련된 게시물을 작성하는 서비스(장소공유서비스), 여러분의 현재 위치를 이용한 지역 생활정보 검색 또는 지도/광고 정보를 제공하는 서비스(정보제공서비스), 그리고 여러분이 보유하는 사진 등 콘텐츠에 기록되거나 콘텐츠와 결합된 위치정보를 활용하여 여러분의 친구들과 콘텐츠를 공유하도록 도와주는 서비스(콘텐츠공유서비스) 등이 있습니다. 더 자세한 내용은 개별 카카오 서비스 이용방법의 위치기반서비스 안내를 참조해 주시기 바랍니다. 특히, 여러분이 14세 미만 이용자로서 개인위치정보를 활용한 위치기반 서비스를 이용하기 위해서는 다음카카오는 여러분의 개인위치정보를 이용 또는 제공하게 되며, 이 경우 부모님 등 법정대리인의 동의가 먼저 있어야 합니다. 만약 법정대리인의 동의 없이 위치기반서비스가 이용된 것으로 판명된 때에는 다음카카오는 즉시 여러분의 위치기반서비스 이용을 중단하는 등 적절한 제한을 할 수 있습니다.
여러분(14세 미만 이용자의 법정대리인 포함)은 카카오 서비스와 관련된 개인위치정보의 이용, 제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보하거나, 이용∙제공에 대한 동의의 전부 또는 일부 철회할 수 있으며, 일시적인 중지를 요구할 수 있습니다. 다음카카오는 위치정보의 보호 및 이용 등에 관한 법률의 규정에 따라 개인위치정보 및 위치정보 이용∙제공사실 확인자료를 6개월 이상 보관하며, 여러분이 동의의 전부 또는 일부를 철회한 때에는 다음카카오는 철회한 부분에 해당하는 개인위치정보 및 위치정보 이용∙제공사실 확인자료를 지체 없이 파기하겠습니다. 
여러분(14세 미만 이용자의 법정대리인 포함)은 다음카카오에 대하여 여러분에 대한 위치정보 이용∙제공사실 확인자료나, 여러분의 개인위치정보가 법령에 의하여 제3자에게 제공되었을 때에는 그 이유 및 내용의 열람 또는 고지를 요구할 수 있고, 오류가 있는 때에는 정정을 요구할 수 있습니다. 만약, 다음카카오가 여러분의 개인위치정보를 여러분이 지정하는 제3자에게 직접 제공하는 때에는 법령에 따라 개인위치정보를 수집한 스마트폰 등으로 여러분에게 개인위치정보를 제공받는 자, 제공 일시 및 제공 목적을 즉시 통보하겠습니다.
다음카카오는 8세 이하의 아동 등(금치산자, 중증 정신장애인 포함)의 보호의무자가 개인위치정보의 이용 또는 제공에 서면으로 동의하는 경우에는 해당 본인의 동의가 있는 것으로 보며, 이 경우 보호의무자는 개인위치정보주체의 권리를 모두 행사할 수 있습니다.
다음카카오는 여러분의 위치정보를 안전하게 보호하기 위하여 위치정보관리책임자(이석우 대표이사, 02-3452-6415, privacy@kakao.com )를 지정하고 있습니다.
만약 여러분과 다음카카오 간의 위치정보와 관련한 분쟁에 대하여 협의가 어려운 때에는 여러분은 위치정보의 보호 및 이용 등에 관한 법률 제 28조 2항 및 개인정보보호법 제43조의 규정에 따라 개인정보 분쟁조정위원회에 조정을 신청할 수 있습니다.
가끔은 중단될 수도 있습니다.

다음카카오는 카카오 서비스를 365일, 24시간 쉬지 않고 제공하기 위하여 최선의 노력을 다합니다. 다만, 장비의 유지∙보수를 위한 정기 또는 임시 점검 또는 다른 상당한 이유로 카카오 서비스의 제공이 일시 중단될 수 있으며, 이때에는 미리 서비스 제공화면에 공지하겠습니다. 만약, 다음카카오로서도 예측할 수 없는 이유로 카카오 서비스가 중단된 때에는 다음카카오가 상황을 파악하는 즉시 통지하겠습니다.
원치 않으시면 해지하실 수 있습니다.

여러분이 카카오 서비스의 이용을 더 이상 원치 않는 때에는 언제든지 카카오 서비스 내 제공되는 메뉴를 이용하여 카카오 서비스 이용계약의 해지 신청을 할 수 있으며, 다음카카오는 법령이 정하는 바에 따라 신속히 처리하겠습니다.
이용계약이 해지되면 법령 및 개인정보 취급방침에 따라 여러분의 정보를 보유하는 경우를 제외하고는 여러분의 정보나 여러분이 작성한 게시물 등 모든 데이터는 삭제됩니다. 다만, 여러분이 작성한 게시물이 제3자에 의하여 스크랩 또는 다른 공유 기능으로 게시되거나, 여러분이 제3자의 게시물에 댓글 등 게시물을 추가하는 등의 경우에는 다른 이용자의 정상적 서비스 이용을 위하여 필요한 범위 내에서 카카오 서비스 내에 삭제되지 않고 남아 있게 됩니다.
또한, 여러분은 다양한 카카오 서비스 중에서 일부 서비스만을 선택적으로 해지하실 수 있으며, 이 경우에는 해지된 서비스에 대한 데이터만 삭제되며, 다른 카카오 서비스 이용을 위한 카카오계정은 삭제되지 않고 남아 있게 됩니다.
모든 것을 보증하는 것은 아닙니다.

다음카카오는 여러분이 마음껏 카카오 서비스를 이용할 수 있도록 합리적인 수준의 주의를 기울여 카카오 서비스를 제공합니다.
다음카카오는 법령상 허용되는 한도 내에서 카카오 서비스와 관련하여 본 약관에 명시되지 않은 어떠한 구체적인 사항에 대한 약정이나 보증을 하지 않습니다. 예를 들어, 다음카카오는 카카오 서비스에 속한 콘텐츠, 서비스의 특정 기능, 서비스의 이용가능성에 대하여 어떠한 약정이나 보증을 하는 것이 아니며, 카카오 서비스를 ‘있는 그대로’ 제공할 뿐입니다.
다음카카오의 잘못은 다음카카오가 책임집니다.

다음카카오는 여러분이 카카오 서비스를 이용함으로써 더 많은 즐거움과 혜택을 받기를 희망합니다. 만일 다음카카오의 과실로 인하여 여러분이 손해를 입게 될 경우 다음카카오는 법령에 따라 여러분의 손해를 배상하겠습니다.
다만 다음카카오는 카카오 서비스에 접속 또는 이용과정에서 발생하는 개인적인 손해, 제3자가 불법적으로 다음카카오의 서버에 접속하거나 서버를 이용함으로써 발생하는 손해, 제3자가 다음카카오 서버에 대한 전송 또는 다음카카오 서버로부터의 전송을 방해함으로써 발생하는 손해, 제3자가 악성 프로그램을 전송 또는 유포함으로써 발생하는 손해, 전송된 데이터의 생략, 누락, 파괴 등으로 발생한 손해, 명예훼손 등 제3자가 카카오 서비스를 이용하는 과정에서 여러분에게 발생시킨 손해에 대하여 책임을 부담하지 않습니다. 또한 다음카카오는 법률상 허용되는 한도 내에서 간접 손해, 특별 손해, 결과적 손해, 징계적 손해, 및 징벌적 손해에 대한 책임을 부담하지 않습니다.
약관을 수정할 수도 있습니다.

다음카카오는 법률이나 카카오 서비스의 변경사항을 반영하기 위한 목적 등으로 본 약관이나 각 카카오 서비스 Q&A 센터의 카카오 서비스 이용방법, 해당 안내 및 고지사항을 수정할 수 있습니다. 본 약관이 변경되는 경우 다음카카오는 변경 사항을 개별 카카오 서비스 초기화면에 게시하며, 변경된 약관은 게시한 날로부터 15 일 후부터 효력이 발생합니다.
하지만, 피치 못하게 여러분에게 불리한 내용으로 개정될 경우 다음카카오는 카카오계정으로 사용하는 이메일 주소로 이메일을 발송하거나, 카카오톡을 보내거나, 알림 메시지를 띄우는 등 합리적으로 가능한 방법으로 여러분에게 변경된 내용을 30일 전에 미리 알려드리겠습니다.
다음카카오는 변경된 약관을 게시한 날로부터 효력이 발생되는 날까지 약관변경에 대한 여러분의 의견을 기다리겠습니다. 위 기간이 지나도록 여러분의 의견이 다음카카오에 접수되지 않으면, 여러분이 변경된 약관에 따라 서비스를 이용하는 데에 동의하는 것으로 보겠습니다. 다음카카오로서는 매우 안타까운 일이지만, 여러분이 변경된 약관에 동의하지 않는 경우 변경된 약관의 적용을 받는 해당 서비스의 제공이 더 이상 불가능하게 됩니다.
마지막으로…

다음카카오는 여러분과의 의견 교환을 소중하게 생각합니다. 여러분은 언제든지 카카오 고객센터에 방문하여 의견을 개진할 수 있습니다. 다음카카오는 카카오계정으로 사용하는 이메일 주소로 이메일을 발송하거나 전자쪽지를 보내는 방법 등으로 회원에게 여러 가지 소식을 알려드리며, 회원 전체에 대한 통지는 7일 이상 카카오 서비스 초기화면 또는 공지사항 란에 게시함으로써 효력이 발생합니다.
본 약관은 다음카카오와 여러분과의 관계에 적용되며, 제3자의 수익권을 발생시키지 않습니다.
여러분이 본 약관을 준수하지 않은 경우에, 다음카카오가 즉시 조치를 취하지 않더라도 다음카카오가 가지고 있는 권리를 포기하는 것이 아니며, 본 약관 중 일부 조항의 집행이 불가능하게 되더라도 다른 조항에는 영향을 미치지 않습니다.
본 약관 또는 카카오 서비스와 관련하여서는 대한민국의 법률이 적용됩니다.
공고일자 : 2013년 3월 12일
시행일자 : 2013년 4월 11일
카카오 서비스(위치기반서비스 포함) 관련 문의사항이 있으시면 언제든지 카카오 고객 센터((경기도 성남시 분당구 판교역로 241번길 20 미래에셋벤처타워 1층, 1577-3754, 홈페이지 문의: http://www.kakao.com )에 방문 또는 연락해 주시기 바랍니다. </div>
        <div class="check" >
          <input id="policy" type="checkbox"/>
          <label for="policy">서비스 이용약관에 동의 합니다.</label>
        </div>
        <div class="joinup">
          <button class="btn btn-block btn-primary">회원가입</button>
        </div>
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
        <li><a href="#">회사소개</a></li>
        <li><a href="#">이용약관</a></li>
        <li><a href="#">개인정보보호정책</a></li>
        <li><a href="#">법적고지</a></li>
        <li><a href="#">이메일무단수집거부</a></li>
        <li><a href="#">고객센터</a></li>
        <li><a href="#">찾아오시는 길</a></li>
      </ul>
    </div>
    <div class="footerlist2">
      <ul id="footercompany">
        <li> 사업자등록번호 : 000-00-0000</li>
        <li> 통신판매신고번호 : 2015-경기**-0101</li>
        <li> 개인정보관리책임자 : M!Plan </li>
        <li> 대표이사 : 김정훈 </li>
        <li id="company-info"> VM! - Favorite Music㈜ <br />
          ⓒ Copyright M!Plan All Rights Reserved. 1997~2015, ⓒ Copyright M!Plan Lap All Rights Reserved. 2009~2015<br />
        </li>
      </ul>
    </div>
  </div>
</div>