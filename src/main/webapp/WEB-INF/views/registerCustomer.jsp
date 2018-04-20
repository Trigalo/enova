<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="templates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Register Customer</h1>
			<p class="lead">Fill the fields please</p>
		</div>
		
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">
				<h2>Basic info</h2>
				<div class="form-group">
					<label for="name">Name</label>
					<form:input path="customerName" id="name" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="email">email</label>
					<form:input path="customerEmail" id="email" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="phone">Phone</label>
					<form:input path="customerPhone" id="phone" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="username">Username</label>
					<form:input path="username" id="username" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="password">Password</label>
					<form:password path="password" id="password" class="form-control"/>
				</div>
				
				<h2>BillingAddress</h2>
				<div class="form-group">
					<label for="billingStreet">Street Name</label>
					<form:input path="billingAddress.streetName" id="billingStreet" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="apartmentNumber">Apartment Number</label>
					<form:input path="billingAddress.apartmentNumber" id="apartmentNumber" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="billingCity">City</label>
					<form:input path="billingAddress.city" id="billingCity" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="billingState">State</label>
					<form:input path="billingAddress.state" id="billingState" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="billingCountry">Country</label>
					<form:input path="billingAddress.country" id="billingCountry" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="billingZip">Zip Code</label>
					<form:input path="billingAddress.zipCode" id="billingZip" class="form-control"/>
				</div>
				
				
				<h2>Shipping Address</h2>
				<div class="form-group">
					<label for="shippingStreet">Street Name</label>
					<form:input path="shippingAddress.streetName" id="shippingStreet" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="apartmentNumber">Apartment Number</label>
					<form:input path="shippingAddress.apartmentNumber" id="apartmentNumber" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="shippingCity">City</label>
					<form:input path="shippingAddress.city" id="shippingCity" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="shippingState">State</label>
					<form:input path="shippingAddress.state" id="shippingState" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="shippingCountry">Country</label>
					<form:input path="shippingAddress.country" id="shippingCountry" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="shippingZip">Zip Code</label>
					<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-control"/>
				</div>
				
				
				<br>
				
				<input type="submit" value="submit" class="btn btn-primary" />
				<a href="<c:url  value="/"/>" class="btn btn-danger">Cancel</a>
				
			</form:form>
		</div>
		
	</div>
</div>
	

<%@ include file="templates/footer.jsp" %>