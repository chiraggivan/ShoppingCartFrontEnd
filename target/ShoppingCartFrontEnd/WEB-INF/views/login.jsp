<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<jsp:include page="/WEB-INF/views/headdoc.jsp"></jsp:include>
<spring:url var="mp" value="/"/>
<div class="container">
	<p>${errorMessage}</p>
	<br>
	<form:form action="${mp}validate" modelAttribute="User" method="post">
	<table>
		<tr>
			<td><label for="id"><b>Username :</b></label></td> 
			<td><form:input path="id" placeholder="Enter User ID" /> </td>
		</tr>
		
		<tr>
			<td><form:label path="password"><b>Password :</b></form:label></td>
			<td><form:input type="password" placeholder="Enter Password" path="password"/><br></td>
		</tr>
	</table>
		<form:button type="submit">Login</form:button>
		<!-- <span class="psw">Forgot <a href="#">password?</a></span> -->

	</form:form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp" ></jsp:include>