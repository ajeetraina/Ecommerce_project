<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
				<img src="<c:url value="/resources/images/red.jpg" />" alt="image" style="width:100%"/>
              
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-default">OK</a></p>
        </section>
</div></div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
