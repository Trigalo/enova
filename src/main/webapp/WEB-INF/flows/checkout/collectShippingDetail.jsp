<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Customer</h1>
			<p class="lead">Please fill all fields</p>
		</div>
		
		<form:form commandName="order" class="form-horizontal">
			
			<h3>Shipping Address</h3>
			
			<div class="form-group">
				<label for="shippingStreet">Street Name</label>
				<form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingApartmentNumber">Apartment Number</label>
				<form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingCity">City</label>
				<form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingState">State</label>
				<form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingCountry">Street Name</label>
				<form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingZip">Zip</label>
				<form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-control"/>
			</div>
			
			<input type="hidden" name="_flowExecutionKey">
			
			<button class="btn btn-danger" name="_eventId_backToCollectCustomerInfo">Back</button>
			<input type="submit" value="next" class="btn btn-primary" name="_eventId_shippingDetailCollected">
			<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
			
			
		</form:form>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>