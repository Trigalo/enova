 <%@ include file="templates/header.jsp" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <div class="container-wrapper">
 	<div class="container">
 		<section>
 			<div class="jumbotron">
 				<div class="container">
 					<h2>Cart</h2>
 					<p class="lead">Products in your cart</p>
 				</div>
 			</div>
 		</section>
 		
 		<section class="container" ng-app="cartApp">
 		    <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
 			<div>
 				<a class="btn btn-danger" ng-click="clearCart()">Clear cart</a>
 				<a href="<spring:url value="/order/${cartId}"/>" class="btn btn-success pull-right"> Checkout</a>
 			</div>

			<table class="table">
				<tr>
					<th>Product</th>
					<th>Unit Price</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				<tr  ng-repeat="item in cart.cartItems">
					<td>{{item.product.productName}}</td>
					<td>{{item.product.productPrice}}</td>
					<td>{{item.quantity}}</td>
					<td>{{item.totalPrice}}</td>
					<td><a href="#" class="label label-danger"  
					                ng-click="removeFromCart(item.product.productId)">removeButon</a></td>
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th>Grand Total</th>
					<th>{{calGrandTotal()}}</th>
					<th></th>
				</tr>
			</table>
			
			<a href="<spring:url value="/product/productList" />" class="btn btn-primary">Continue Shopping</a>
			</div>
		</section>
 	</div>
 </div>
  <%@ include file="templates/footer.jsp" %>