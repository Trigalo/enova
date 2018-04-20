<%@ include file="templates/header.jsp" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <div class="container-wrapper">
 	<div class="container">
 		<section>
 			<div class="jumbotron">
 				<div class="container">
 					<h2>Customer register successfully</h2>
 				</div>
 			</div>
 		</section>
 		
 		<section class="container" >
 		
			<p><a href="<spring:url value="/product/productList" />" class="btn btn-primary">Products</a></p>
		
		</section>
 	</div>
 </div>
  <%@ include file="templates/footer.jsp" %>