<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ include file="templates/header.jsp" %>

<div class="container-wrapper">
	<div class="row">
	
	 <div class="container">
	 	<h1>Admin</h1>
	 	<p class="lead">Here you can admin the site</p>
	 	<h3><a href = <c:url value="/admin/productInventory"/> >Product Inventory</a></h3>
	 	<p>Here you can view, check and modify detail products</p>
	 </div>
	
	
	</div>
</div>

<%@ include file="templates/footer.jsp" %>