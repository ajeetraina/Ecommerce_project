<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html >
  <head>
    <meta charset="UTF-8">
    <title>Simple login form</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/loginStyle.css">
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}


</style>
    
    
    
  </head>
<body onload='document.loginForm.username.focus();'>

  <body>

    <div class="container">
  <div class="login">
  	<h1 class="login-heading">
  	<br><br><br>
      <strong>Welcome.</strong> Please login.</h1>

    

    <c:if test="${not empty error}">
      <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
      <div class="msg">${msg}</div>
    </c:if>

    
    <c:url var="loginUrl" value="/j_spring_security_check"></c:url>
    <form action="${loginUrl}" method="POST">
      
        <input type="text" name="username" placeholder="Username" required="required" class="input-txt" />
          <input type="password" name="password" placeholder="Password" required="required" class="input-txt" />
          <div class="login-footer">
             <a href="#" class="lnk">
              <span class="icon icon--min">ಠ╭╮ಠ</span> 
              I've forgotten something
            </a>
            <button type="submit" class="btn btn--center">Sign in  </button>
          </div>
          <input type="hidden" name="${_csrf.parameterName}"
      value="${_csrf.token}" />
      </form>
         <button class="btn btn-left"><a href="<c:url value="/register" />">Sign Up</a></button>
   <button class="btn btn-right"><a href="<c:url value="/home" />">Home</a></button>
  
  
  </div>
</div>
    
        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
		