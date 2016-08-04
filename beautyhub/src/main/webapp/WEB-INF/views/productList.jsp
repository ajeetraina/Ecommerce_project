<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<link href="resources/css/style.css" rel='stylesheet' type='text/css' />

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script>

<body>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>2 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/2-col-portfolio.css" rel="stylesheet">


</head>

<body>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">PRODUCTS
                    <small>List of All Products</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

    <c:forEach items="${products}" var="product">
    
     <!-- Project One -->
        <div class="row">
            <div class="col-md-7">
                <a href="#">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" class="img-responsive"
                    width="400" height"400"/>
                     </a>
            </div>
            <div class="col-md-5"> <br><br>
                <h3>${product.productName}</h3>
                <h4>$ ${product.productPrice}</h4>
                <p> ${product.productDescription}</p>
                <a class="btn btn-primary"  href="<spring:url value="/product/viewProduct/${product.productId}" />">
                           
                View-Item <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <!-- /.row --> <br><br> <br><br> <br><br>
		</c:forEach>
     
        



    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

</body>

</html>

