<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import ="java.util.*,mplanweb.music.web.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Join Page</title>
</head>
<body>
	<c:forEach items="${result}" var="UserBean"  varStatus="status">
		ID: <c:out value="${userid }" /> <br />
		<!-- 
		 Name: <c:out value="${userInfo.name }" /> <br />-->
	</c:forEach>
</body>
</html>