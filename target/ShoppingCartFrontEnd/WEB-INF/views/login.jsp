<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>${errorMessage}</p>
	<br>
	<form action="validate" method="post">

		<label><b>Username</b></label> 
		<input type="text" placeholder="Enter Username" name="userid" required> 
		<label><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="pswd"	required>

		<button type="submit">Login</button>
		<input type="checkbox" checked="checked"> Remember me


		<button type="button" class="cancelbtn">Cancel</button>
		<span class="psw">Forgot <a href="#">password?</a></span>

	</form>

</body>
</html>