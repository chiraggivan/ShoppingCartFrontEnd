<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <div class = "container">
	<table>
		<tr>
			<td><a href="">Manage Categories</a></td>
			<td><a href="">Manage Suppliers</a></td>
			<td><a href="">Manage Products</a></td>
		</tr>
	</table>
	
	<h2>Add a Supplier</h2>
	
	<c:url var="addAction" value="/manage_supplier_add"></c:url>
	<form:form action="${addAction}" commandName=""category" enctype="multipart/form-data" metdod="post">
	
	

	<table>
		<tr>
			<td><form:label path="id"><spring:message text="ID"/></form:label></td>
			
			<c:choose>
			
			<c:when test="${!empty supplier.id}">
			<td><form:input path="id" disable="true" readonly="true"/></td>
			</c:when>
			
			<c:otherwise>
			<td> <form:input path="id" pattern=".{5,16}" required="true"
							title="id should contain 5 to 20 characters"/>
			</td>
			</c:otherwise>
			</c:choose>
		</tr>
		<tr>
			<td><form:label path="name"><spring:message text="Name"/></form:label></td>
			<td><form:input path="name" required="true" /></td>
		</tr>
		<tr>
			<td><form:label path="description"><spring:message text="description"/></form:label></td>
			<td><form:input path="description" required="true" /></td>
		</tr>
	</table>
	<form:button name="submit" class="btn btn-primary" value="Submit" />
	</form:form> 
	<br>
		<h3>Supplier List</h3>		
		<table>
			<tr>
			<td>Supplier Id</td>
			<td>supplier Name</td>
			<td>Supplier Address</td>
			<td>Edit</td>
			<td>delete</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</div>