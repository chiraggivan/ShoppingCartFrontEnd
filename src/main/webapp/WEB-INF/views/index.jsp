<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>first page webApp</title>

    <!-- Bootstrap -->
    <!-- <link href="https://maxcdn.bootrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/webSite.css" rel="stylesheet" />
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>


</head>
<body>

<jsp:include page="/WEB-INF/views/headdoc.jsp" />
	 <h2>Shopping Cart</h2>
	<hr />
	<c:if test="${empty successMessage}">
	Account already there!
	<a href="signin"> Login </a> Create New Account
	<a href="register">register here</a>
	</c:if>
	
	<c:if test="${not empty successMessage}">
		<a href="signout"> Logout </a>
		 
		<a href="trolley"> Basket </a>
	</c:if>
	
	<a href="example">rough page</a>
	<a href="example2">another rough</a>
	<br /> 
	
	
	


    <c:if test="${not empty errorMessage}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>

	<c:if test="${userClickedLogin}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>

	<c:if test="${userClickedregistration}">
		<jsp:include page="registration.jsp"></jsp:include>
	</c:if>

	<p>${successMessage}</p>
	
	

</body>
</html>
