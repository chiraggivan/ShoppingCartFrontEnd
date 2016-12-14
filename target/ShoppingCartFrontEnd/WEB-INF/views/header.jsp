<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>


</head>
<body>
<div class="container" id="main">

	<div class="navbar navbar-default navbar-light bg-faded">
		<div class="container-fluid">
		
		<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
		<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	
		<a class="navbar-brand" href="/"><img src="/resources/images/logo.png" alt="Your Logo"></a>
		
		<div class="nav-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="#">Home</a>
				</li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <strong class="caret"></strong></a>
					
					<ul class="dropdown-menu">
						<li>
							<a href="#">Web Design</a>
						</li>
						
						<li>
							<a href="#">Web Development</a>
						</li>
						
						<li>
							<a href="#">SEO</a>
						</li>
						
						<li class="divider"></li>
						
						<li class="dropdown-header">More Services</li>
						
						<li>
							<a href="#">Content Creation</a>
						</li>
						
						<li>
							<a href="#">Social Media Marketing</a>
						</li>
					</ul><!-- end dropdown-menu -->
				</li>
			</ul>
			
			<form class="navbar-form pull-left">
				<input type="text" class="form-control" placeholder="Search this site..." id="searchInput">
				<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
			</form><!-- end navbar-form -->
			
			<ul class="nav navbar-nav pull-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> My Account <strong class="caret"></strong></a>
					
					<ul class="dropdown-menu">
						<li>
							<a href="#"><span class="glyphicon glyphicon-wrench"></span> Settings</a>
						</li>
						
						<li>
							<a href="#"><span class="glyphicon glyphicon-refresh"></span> Update Profile</a>
						</li>
						
						<li>
							<a href="#"><span class="glyphicon glyphicon-briefcase"></span> Billing</a>
						</li>
						
						<li class="divider"></li>
						
						<li>
							<a href="#"><span class="glyphicon glyphicon-off"></span> Sign out</a>
						</li>
					</ul>
				</li>
			</ul><!-- end nav pull-right -->
		</div><!-- end nav-collapse -->
	
	</div><!-- end container -->
		
	</div><!-- end navbar -->
</div>
</body>
</html>
