<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Address Details</title>
</head>
<body>

<h3>Please check your Billing address.</h3>

<h5>If not correct, please amend it. Thank you</h5>

<form name='registration' onSubmit="">
		<table>
		
			<tr>
			 <td><label for="AddressLine1">Address Line 1:</label> </td>
			 <td><input type="text" name="AddressLine1" size="30" value="43, redpath Close," /></td>
			 
			</tr>
			<tr>
			 <td><label for="AddressLine2" align="right">Address Line 2:</label></td>
			 <td><input type="text" name="AddressLine2" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><label for="AddressLine3">Address Line 3:</label></td> 
			 <td><input type="text" name="AddressLine3" size="30" value=""/></td>
			</tr>
			<tr>
			 <td><label for="AddressLine4">Address Line 4:</label> </td>
			 <td><input type="text" name="AddressLine4" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><label for="Landmark">Landmark :</label> </td>
			 <td><input type="text" name="Landmark" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><label for="City">City:</label> </td>
			 <td><input type="text" name="City" size="30" value=""/></td>
			</tr>
			<tr>
			 <td align="right"><label for="Postcode">Postcode :</label> </td>
			 <td><input type="text" name="Postcode" size="30" value="LE4 6DZ"/></td>
			</tr>
			<tr> 
			 <td align="right"><label for="State">State :</label> </td>
			 <td><input type="text" name="State" size="30" value="Leicestershire"/></td>
			</tr>
		</table>
			 <input type="submit" name="submit" value="Submit" /> 
		 
	</form>

</body>
</html>