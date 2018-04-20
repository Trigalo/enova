<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"  rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/carousel.css"  rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-default navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<c:url value="/" />" >E-nova</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<c:url value="/" />">Home</a></li>
                <li><a href="<c:url value="/product/productList" />">Articulos</a></li>
                <li><a href="#contact">Contact</a></li>
              </ul>
              <ul class="nav navbar-nav pull-right">
              	<c:if test="${pageContext.request.userPrincipal.name != null}">
              		<li><a>Welcome:${pageContext.request.userPrincipal.name}</a></li>
              		<li><a href= "<c:url value="/j_spring_security_logout"/>" >Logout</a></li>
              		<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
              			<li><a href= "<c:url value="/customer/cart"/>" >Cart</a></li>
              		</c:if>
              		<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
              			<li><a href= "<c:url value="/admin"/>" >Admin</a></li>
              		</c:if>
              	</c:if>
              	
              		<c:if test="${pageContext.request.userPrincipal.name == null}">
              			<li><a href= "<c:url value="/login"/>" >Login</a></li>
              			<li><a href= "<c:url value="/register"/>" >Register</a></li>
              		</c:if>
              	
              
              </ul>
            </div>
          </div>
        </nav>










      