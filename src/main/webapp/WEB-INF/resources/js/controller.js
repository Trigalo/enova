var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

	   $scope.refreshCart = function(cartId){
		   $http.get('/Enova/rest/cart/'+$scope.cartId).success(function (data){
			   $scope.cart = data;
			   });
		   };
		   
	   $scope.clearCart = function(){
		   $http.delete('/Enova/rest/cart/'+$scope.cartId).success($scope.refreshCart($scope.cartId));
	   };
	   
	   $scope.testCart = function(){
		   alert("Test angular");
	   };
	   
	   $scope.initCartId = function(cartId){
		   $scope.cartId = cartId;
		   $scope.refreshCart(cartId);
	   };
	   
	   $scope.addToCart = function(productId){
		   $http.put('/Enova/rest/cart/add/'+productId).success(function (data){
			   $scope.refreshCart($http.get('/Enova/rest/cart/cartId'));
			   alert("Product successfully add to cart");
		   });
	   };
	   
	   $scope.removeFromCart = function(productId){
		   $http.put('/Enova/rest/cart/remove/'+productId).success(function (data){
			   $scope.refreshCart($http.get('/Enova/rest/cart/cartId'));
		   });
	   }
});	 
