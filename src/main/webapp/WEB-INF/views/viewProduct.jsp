<%@ include file="templates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
	
	 <div class="page-header">
	 	<h1>Detalle de los Productos</h1>
	 	<p class="lead">Checa mas a fondo nuestros productos</p>
	 </div>
	 
	 <div class="container">
	 	<div class="row">
	 		<div class="col-md-5">
	 			<img alt="pic" src="#">
	 		</div>
	 		
	 		<div class="col-md-5">
	 			<h3>Product Name: ${product.productName}</h3>
	 			<p>Description: ${product.productDes}</p>
	 			<p>Condition: ${product.productCondition}</p>
	 			<p>Status: ${product.productStatus}</p>
	 			<p>Price: ${product.productPrice}</p>
	 			<p>Units: ${product.productUnits}</p>
	 		</div>
	 	
	 	</div>
	 </div>

	</div>
</div>

<%@ include file="templates/footer.jsp" %>