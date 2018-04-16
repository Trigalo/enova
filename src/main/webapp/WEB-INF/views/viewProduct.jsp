<%@ include file="templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="container-wrapper">
	<div class="container">
	
	 <div class="page-header">
	 	<h1>Detalle de los Productos</h1>
	 	<p class="lead">Checa mas a fondo nuestros productos</p>
	 </div>
	 
	 <div class="container" ng-app="cartApp">
	 	<div class="row">
	 		<div class="col-md-5">
	 			<img alt="pic" src= "<c:url value="/resources/images/${product.productId}.png" />" width="400px">
	 		</div>
	 		
	 		<div class="col-md-5">
	 			<h3>Product Name: ${product.productName}</h3>
	 			<p>Description: ${product.productDes}</p>
	 			<p>Condition: ${product.productCondition}</p>
	 			<p>Status: ${product.productStatus}</p>
	 			<p>Price: ${product.productPrice}</p>
	 			<p>Units: ${product.productUnits}</p>
	 			
	 			<br>
	 			
	 			<c:set var="role" scope="page" value="${param.role}"/>
	 			<c:set var="url" scope="page" value="/productList"/>
	 			<c:if test="${role=='admin'}">
	 				<c:set var="url" scope="page" value="/admin/productInventory"/>
	 			</c:if>
	 			
	 			<p ng-controller="cartCtrl"> 
	 				<a href="<c:url value="${url}" />" class="btn btn-primary">Back</a>
	 				<a href="#" class="btn btn-warning" ng-click="addToCart('${product.productId}')">Order Now</a>
	 				<a href="<spring:url value="/cart" />" class="btn btn-success">View cart </a>
	 				<a href="#" class="btn btn-danger" ng-click="testCart()">Test Angular</a>
	 				
	 			</p>
	 		</div>
	 	
	 	</div>
	 </div>

	</div>
</div>

<%@ include file="templates/footer.jsp" %>