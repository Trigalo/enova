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
		    
		    <h3>Basic Info</h3>
	        <div class="form-group">
				<label for="name">Name</label>
				<form:input path="cart.customer.customerName" id="name" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="email">Email</label>
				<form:input path="cart.customer.customerEmail" id="email" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="phone">Phone</label>
				<form:input path="cart.customer.customerPhone" id="phone" class="form-control"/>
			</div>
			
			
			<h3>Billing Address</h3>
			
			<div class="form-group">
				<label for="billingStreet">Street Name</label>
				<form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingApartmentNumber">Apartment Number</label>
				<form:input path="cart.customer.billingAddress.apartmentNumber" id="billingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingCity">City</label>
				<form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingState">State</label>
				<form:input path="cart.customer.billingAddress.state" id="billingState" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingCountry">Street Name</label>
				<form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingZip">Zip</label>
				<form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-control"/>
			</div>
			
			<input type="hidden" name="_flowExecutionKey">
			
			<input type="submit" value="next" class="btn btn-primary" name="_eventId_customerInfoCollected">
			<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
			
		</form:form>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>