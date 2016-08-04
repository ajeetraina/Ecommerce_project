<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<head>
body {
    margin-top: 20px;
}

</head>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Order</h1>

            <p class="lead">Order confirmation</p>
        </div>

       <div class="container">
 <form:form commandName="order" class="form-horizontal">

    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>Elf Cafe</strong>
                        <br>
                          ${order.cart.customer.shippingAddress.streetName}
                        <br>
                         ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                          <br>
                           ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                       


                        <br>
                        <abbr title="Phone">P:</abbr> (213) 484-6829
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: <fmt:formatDate type="date" value="${now}" /></em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Quantity</th>
                            <th class="text-right">Price</th>
                            <th class="text-right">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cartItem" items="${order.cart.cartItems}">
                        <tr>
                            <td class="col-md-9"><em>${cartItem.product.productName}</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> ${cartItem.quantity} </td>
                            <td class="col-md-1 text-center">$ ${cartItem.product.productPrice}</td>
                            <td class="col-md-1 text-center">$ ${cartItem.totalPrice}</td>
                        </tr>
                       </c:forEach>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p>
                            <p>
                                <strong>Tax: </strong>
                            </p></td>
                            <td class="text-center">
                            <p>
                                <strong>$ ${order.cart.grandTotal}</strong>
                            </p>
                            <p>
                                <strong>$6.94</strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>$31.53</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
               
            </div>
        </div>
    </div>
   


                        <input type="hidden" name="_flowExecutionKey" />

                        <br/><br/>

                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>

                        <input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />

                        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                    
                    </div>
                </form:form>
            </div>
        </div>
</div></div>
<br><br><br><br><br><br><br><br>