<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
This is registration page

<form:form action="registered" method="post">

userid : <input type="text" name="userid">
Name:  <input type="text" name="userName">
password:  <input type="password" name="pwd">
email: <input type="email" name="email">
contact : <input type="text" name="contact">
address: <input type="text" name="address">

<input type="submit" value="register">
<input type="reset" value="Clear all">



</form:form>


</body>
</html>