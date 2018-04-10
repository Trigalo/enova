<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ include file="templates/header.jsp" %>

<div class="container">
	<div class="row">
	
	 <div class="page-header">
	 	<h1>Productos</h1>
	 	<p class="lead">Checa nuestros productos</p>
	 </div>
	
	<table class="table table-striped table-hover">
		<tr>
		    <th>PhotoThumb</th>
			<th>Id</th>
			<th>Name</th>
			<th>Status</th>
			<th>Condition</th>
			<th>Price</th>
			<th>Units</th>
			<th></th>
		</tr>
		    <c:forEach items="${products}" var="product">
			<tr>
			    <td><img alt="Photo" src="#"></td>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productStatus}</td>
				<td>${product.productCondition}</td>
				<td>${product.productPrice}</td>
				<td>${product.productUnits}</td>
				<td><a href= "<spring:url value="/productList/viewProduct/${product.productId}" />"  >
				<span class="glyphicon glyphicon-info-sign"></span></a></td>
			</tr>
		    </c:forEach>
	</table>
	</div>
</div>

<%@ include file="templates/footer.jsp" %>