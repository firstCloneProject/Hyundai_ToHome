<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <jsp:forward page="/MainController" >
</jsp:forward> --%>

<%
request.setCharacterEncoding("UTF-8");
%>
<html>

<head>
<title>새벽투홈</title>
</head>

<body>
<jsp:forward page="main"></jsp:forward>
</body>
</html>