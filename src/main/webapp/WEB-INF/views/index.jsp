<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


	<jsp:include page="/WEB-INF/views/headdoc.jsp" ></jsp:include>
	
	<jsp:include page="/WEB-INF/views/carousel.jsp" ></jsp:include>
	<jsp:include page="/WEB-INF/views/marketing.jsp" ></jsp:include>
	<div class="container">	
		<c:if test="${not empty logoutMessage}">
			<h3>${logoutMessage}</h3>
		</c:if>
		
		<c:if test="${not empty successMessage}">
			<h3>${successMessage}</h3>
		</c:if>
		
		<c:if test="${!empty errorMessage}">
			<h3>${errorMessage}</h3>
		</c:if>
		
	
	
	
	
	<p>${successMessage}</p>

</div>	

<jsp:include page="/WEB-INF/views/footer.jsp" ></jsp:include>
