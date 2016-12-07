<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<jsp:include page="/WEB-INF/views/headdoc.jsp"></jsp:include>
<spring:url var="mp" value="/"/>
<form:form action="${mp}register" modelAttribute="User" method="post">

<div class="container">
	<table>
		<h3>Personal Details:</h3>
		
			<tr>
			 <td><form:label  path="id" for="id">User Id:</form:label> </td>
			 <td><form:input path="id" maxlength="10" size="30"/></td>
			 
			</tr>
			<tr>
			 <td><form:label path="name"  for="name" align="right">User Name:</form:label></td>
			 <td><form:input path="name" name="name" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><form:label path="password" for="password">Password :</form:label></td> 
			 <td><form:input path="password" type="password" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><form:label path="email" for="email">Email ID:</form:label> </td>
			 <td><form:input path="email" type="email" name="email" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><form:label path="dob" for="dob">Date of Birth:</form:label> </td>
			 <td><form:input path="dob" type="date" name="dob" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><form:label path="contactno" for="ContactNumber">Contact Number :</form:label> </td>
			 <td><form:input path="contactno" type="text" size="30" value=""/></td>
			</tr>
			
	<!------------- For Billing Address Details ----------------------->		
			
			
			<tr>
				<td colspan="2"><h3>Billing Address Details:</h3></td>
			</tr>
			
			<tr>
			 <td><label for="AddressLine1">Address Line 1:</label> </td>
			 <td><form:input path="billingAddress.addressline1" type="text" name="AddressLine1" size="30" value="43, redpath Close," /></td>
			 
			</tr>
			<tr>
			 <td><label for="AddressLine2" align="right">Address Line 2:</label></td>
			 <td><form:input path="billingAddress.addressline2" type="text" name="AddressLine2" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><label for="AddressLine3">Address Line 3:</label></td> 
			 <td><form:input path="billingAddress.addressline3" type="text" name="AddressLine3" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><label for="AddressLine4">Address Line 4:</label> </td>
			 <td><form:input path="billingAddress.addressline4" type="text" name="AddressLine4" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><label for="Landmark">Landmark :</label> </td>
			 <td><form:input path="billingAddress.landmark" type="text" name="Landmark" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><label for="City">City:</label> </td>
			 <td><form:input path="billingAddress.city" type="text" name="City" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><label for="Postcode">Postcode :</label> </td>
			 <td><form:input path="billingAddress.pincode" type="text" name="Postcode" size="30" value="LE4 6DZ"/></td>
			</tr>
			<tr> 
			 <td align="right"><label for="State">State :</label> </td>
			 <td><form:input path="billingAddress.state" type="text" name="State" size="30" value="Leicestershire"/></td>
			</tr>
			
			
	<!------------- For Shipping Address Details ----------------------->		
	
			<tr>
				<td colspan="2"><h3>Shipping Address Details:</h3></td>
			</tr>
			
			
			<tr>
			 <td><label for="AddressLine1">Address Line 1:</label> </td>
			 <td><form:input path="oneShippingAddress.addressline1" type="text" name="AddressLine1" size="30" value="43, redpath Close," /></td>
			</tr>
			<tr>
			 <td><label for="AddressLine2" align="right">Address Line 2:</label></td>
			 <td><form:input path="oneShippingAddress.addressline2" type="text" name="AddressLine2" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td><label for="AddressLine3">Address Line 3:</label></td> 
			 <td><form:input path="oneShippingAddress.addressline3" type="text" name="AddressLine3" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td><label for="AddressLine4">Address Line 4:</label> </td>
			 <td><form:input path="oneShippingAddress.addressline4" type="text" name="AddressLine4" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td align="right"><label for="Landmark">Landmark :</label> </td>
			 <td><form:input path="oneShippingAddress.landmark" type="text" name="Landmark" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td align="right"><label for="City">City:</label> </td>
			 <td><form:input path="oneShippingAddress.city" type="text" name="City" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td align="right"><label for="Postcode">Postcode :</label> </td>
			 <td><form:input path="oneShippingAddress.pincode" type="text" name="Postcode" size="30" value="LE4 6DZ"/> <br> </td>
			</tr>
			<tr> 
			 <td align="right"><label for="State">State :</label> </td>
			 <td><form:input path="oneShippingAddress.state" type="text" name="State" size="30" value="Leicestershire"/><br> </td>
			</tr>
			
		</table>
			 <form:button name="submit" class="btn btn-primary" value="Submit" /> 
		 
</form:form>

</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>