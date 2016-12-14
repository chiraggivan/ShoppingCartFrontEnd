<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="/WEB-INF/views/headdoc.jsp"></jsp:include>
	<h1>Add a Product</h1>

	<c:url var="addAction" value="/manage_product_add?${_csrf.parameterName}=${_csrf.token}"></c:url>

	<form:form action="${addAction}" commandName="product"
		enctype="multipart/form-data" method="post">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" value="" disabled="true"
								readonly="true" /></td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern=".{5,20}" required="true" />></td>
					</c:otherwise>
				</c:choose>
			</tr>

			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>

			<tr>
				<td><form:label path="description">
						<spring:message text-"Description"/>
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>

			<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>

			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>

			<tr>
				<td align="left"><form:label path="image">
						<spring:message text="Image" />
					</form:label></td>
				<td align="left"><form:input type="file" name="image"
						path="image" /></td>
			</tr>

			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${!empty product.name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>

		</form:form>
</body>
</html>