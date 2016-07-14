<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>


            <p class="lead">Please update the product information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/editCustomer"
                   method="post" commandName="customer" >

         <form:hidden path="id" value="${customer.id}" />

            <div class="form-group">
                <label for="firstname">FirstName</label>
                <form:errors path="firstname"/>
                <form:input path="firstname" id="firstname" class="form-Control" value="${customer.firstname}"/>
            </div>
            
            <div class="form-group">
                <label for="lastname">LastName</label>
                <form:errors path="lastname"/>
                <form:input path="lastname" id="lastname" class="form-Control" value="${customer.lastname}"/>
            </div>
            
           
            <div class="form-group">
                <label for="email">Email</label>
                <form:errors path="email" />
                <form:input path="email" id="email" class="form-Control" value="${customer.email}" />
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <form:errors path="password" />
                <form:input path="password" id="password" class="form-Control" value="${customer.password}" />
            </div>
            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="RegisterCustomer"/>" class="btn btn-default">Cancel</a>
  </form:form>
</div>
</div>