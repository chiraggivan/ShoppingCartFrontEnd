<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Cart details</title>
</head>
<body>

	<table>
		<tr>
			<th align="left" width="150">cart No.</th>
			<th align="left" width="150">Product Name</th>
			<th align="left" width="150">Quantity</th>
			<th align="left" width="150">Price</th>
			<th colspan="2" align="center" width="50">Action</th>
		</tr>
		
		<c:forEach items="${cartList}" var="cart"
		<tr>
			<th align="left" >${cart.id}</th>
			<th align="left" >${cart.productName }</th>
			<th align="left" >${cart.quantity}</th>
			<th align="left" >${cart.price}</th>
			<th align="left" > <a href = "<c:url valuse='/myCart/delete/${cart.id}'/>"> delete </a></td>
		</tr>
		></c:forEach>
	</table>
	
	<strong>Total cost : ${totalAmount}</strong>
	
	<br>
	<a href="cart_checkout">Checkout</a>
</body>
</html>