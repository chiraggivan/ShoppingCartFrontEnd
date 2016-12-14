<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<spring:url value="/resources"  var="uri"/>
 	<spring:url value="/" var="context" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="${uri}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/mystyle.css">
<title>Landing Page </title>
</head>
<body>
<div class="container" >
<nav class="navbar  navbar-default navbar-light bg-faded">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${context}">ElectraHub</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${context}">Home<span class="sr-only">(current)</span></a></li>
        <li><a href="manage_product">Product</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <c:if test="${not empty loggedInUserId}">
				<li><a>Welcome : ${loggedInUser}</a></li>
			</c:if>
        
        
        
        <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" 
          aria-haspopup="true" aria-expanded="false">Account <span class="caret"></span></a>
          <ul class="dropdown-menu">
	           <c:choose >
	           
	           <c:when test="${not empty loggedInUserId}">
	                <li><a href="logout">Logout</a></li>
	            	<li><a href="cart">Cart</a></li>
			   
	           </c:when>
	           <c:when test="${loggedOut eq true}">
	           	<li><a href="signin">Login</a></li>
	            	<li><a href="register">Register</a></li>
			
	           </c:when>
	           </c:choose>
	            <%-- <c:if test="${}">
					</c:if>
				<c:if test="${not empty loggedInUserId}">
				</c:if> --%>
           </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

