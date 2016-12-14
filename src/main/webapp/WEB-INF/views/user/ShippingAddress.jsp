<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Shipping Address Details</title>
</head>
<body>

<h3>Please check your shipping address.</h3>

<h5>If not correct, please amend it. Thank you</h5>

	<form name='registration' onSubmit="return formValidation();">
		<table>
		
			<tr>
			 <td><label for="AddressLine1">Address Line 1:</label> </td>
			 <td><input type="text" name="AddressLine1" size="30" value="43, redpath Close," /></td>
			</tr>
			<tr>
			 <td><label for="AddressLine2" align="right">Address Line 2:</label></td>
			 <td><input type="text" name="AddressLine2" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td><label for="AddressLine3">Address Line 3:</label></td> 
			 <td><input type="text" name="AddressLine3" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td><label for="AddressLine4">Address Line 4:</label> </td>
			 <td><input type="text" name="AddressLine4" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td align="right"><label for="Landmark">Landmark :</label> </td>
			 <td><input type="text" name="Landmark" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td align="right"><label for="City">City:</label> </td>
			 <td><input type="text" name="City" size="30" value=""/> <br></td>
			</tr>
			<tr>
			 <td align="right"><label for="Postcode">Postcode :</label> </td>
			 <td><input type="text" name="Postcode" size="30" value="LE4 6DZ"/> <br> </td>
			</tr>
			<tr> 
			 <td align="right"><label for="State">State :</label> </td>
			 <td><input type="text" name="State" size="30" value="Leicestershire"/><br> </td>
			</tr>
		</table>
			 <label for="country">Country:</label> 
			 <select name="country">
					<option selected="" value="Default">(Please select a
						country)</option>
					<option value="AF">Australia</option>
					<option value="AL">Canada</option>
					<option value="DZ">India</option>
					<option value="AS">Russia</option>
					<option value="AD">USA</option>
			</select> <br>
			 
			 <label for="email">Email:</label> 
			 <input type="text" name="email" size="50" /> <br>
			 <label id="gender">Sex:</label> 
			 <input type="radio" name="msex" value="Male" /><span>Male</span> 
			 <input type="radio" name="fsex" value="Female" /><span>Female</span> <br>
			 <label>Language:</label> 
			 <input type="checkbox" name="en" value="en" checked /><span>English</span> 
			 <input type="checkbox" name="nonen" value="noen" /><span>Non English</span> <br>
			 <label for="desc">About:</label> 
			 <textarea name="desc" id="desc"></textarea> 
			 <input type="submit" name="submit" value="Submit" /> 
		 
	</form>

</body>
</html>