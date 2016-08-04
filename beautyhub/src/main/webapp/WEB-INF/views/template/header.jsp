<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Angular.JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
    
 

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">


    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/resources/css/modern-business.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

</head>
<body >
	
    <!-- Navigation -->
   <nav class="navbar navbar-inverse navbar-fixed-top ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">The Beauty Store</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value="/baby" />">Home</a></li>
        <li><a href="<c:url value="/baby" />">About Us</a></li>
        <li><a href="<c:url value="/productList" />">Browse Items</a></li>
        <li><a href="<c:url value="/contact" />">Contact Us</a></li> 
     
      </ul>
      </ul>

                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                        
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            
                            <c:url value="/j_spring_security_logout" var="logoutUrl" />
                            <!-- csrt for log out-->
							<form action="${logoutUrl}" method="post" id="logoutForm">
	 						<input type="hidden" 
							name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							</form>
							<script>
							function formSubmit() {
									document.getElementById("logoutForm").submit();
									}
							</script>
          
                            <li><a href="javascript:formSubmit()">Logout</a></li>

                       <!-- ADMIN AND USER  -->
                           <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            
                            <li><a href="<c:url value="/customer/cart" />">CART</a></li>
                            </c:if>
							
							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								 <li><a href="<c:url value="/admin" />">Admin</a></li>
							</c:if>
                           

                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />">Login</a></li>
                            <li><a href="<c:url value="/register" />">Register</a></li>

                        </c:if>
  </ul>
    </div>
  </div>
</nav>
</body>
<br><br>           
