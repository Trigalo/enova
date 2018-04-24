<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="container-wrapper">
		<div class="container">
			<section>
				<div class="jumbotron">
					<div class="container">
						<h1>Invalid cart</h1>
						
					</div>
				</div>
			</section>
			
		    <section class="container" >
		   
		    		<p><a href="<spring:url value="/product/productList" />" class="btn btn-primary">Products</a></p>
		    		
		    </section>
		</div>
	</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>