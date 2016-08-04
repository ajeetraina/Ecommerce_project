<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<head>
<link href="<c:url value="/resources/css/cart.css" />" rel="stylesheet">

</head>



//********************************************************8
<h1><span class="blue">
</span>Cart<span class="blue"></span> 
<span class="yellow">Items</pan></h1>


<section class="container" ng-app="cartApp">

     <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">

<div>
     <a class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
     <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
  </div>
                
<table class="container">

	<thead>
		<tr>                        
			<th><h1>Product</h1></th>
			<th><h1>Unit Price</h1></th>
			<th><h1>Quantity</h1></th>
			<th><h1>Price</h1></th>
			<th><h1>Action</h1></th>
		</tr>
	</thead>
	<tbody>
		   <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
          </tr>
 <tr>
    <br><br>
     <th>Grand Total</th>
   <th>{{calGrandTotal()}}</th>
 
 </tr>
		
	</tbody>
</table>
					
  <a href="<spring:url value="/productList" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>

<!-- My -->
<script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>