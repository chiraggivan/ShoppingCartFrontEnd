<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h2>Shopping Cart</h2>
	<hr />

	Account already there!
	<a href="signin"> Login </a> Create New Account
	<a href="register">register here</a>
	<a href="example">rough page</a>
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
