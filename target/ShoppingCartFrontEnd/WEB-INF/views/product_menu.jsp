<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	<div class="container">
		<ul class="nav nav-pills" role="tablist">
			<c:forEach item="${categoryList}" var="category">
				<li class="dropdown"><a class="dropdown-toggle"
										data-toggle="dropdown" href="#">
										${category.name}<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<c:forEach items="${category.products}" var="product">
							<li>
							<a href="manage_product/get/${product.id}">${product.name}</a>
							</li>
						</c:forEach>
					</ul>						
				</li>
			</c:forEach>
		</ul>
	</div>
	
	${category.products}
</body>
</html>