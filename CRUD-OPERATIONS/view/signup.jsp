<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>	
<head>
<title>Signup And Login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Transparent Organic Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />

<link href="resources/CSS/style1.css" rel='stylesheet' type='text/css' />

<!--web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--/web-fonts-->
<body background="resources/images/bg.jpg">
</head>
<body>
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
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#about">About Us</a></li>
        <li><a href="table">Browse Items</a></li>
        <li><a href="contact">Contact Us</a></li> 
     
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="list">
        	<span class="glyphicon glyphicon-log-in"></span> List</a></li>
      </ul>
    </div>
  </div>
</nav>

<br><br>           

	<h1>Signup And Login Form</h1>
<div class="two-forms">
	<div class="wrap">
		<div class="signup">
			<h2>Signup<span>Form</span></h2>
			<div class="singup-info">
						<form:form method="POST" action="register">
							<input type="text" name="firstname" class="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}" >
								
								<input type="text" name="lastname" class="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Second Name';}" >
									<div class="users">
										
										<input type="text" name="username" class="text" value="UserName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'UserName';}" >
										
										<input type="text" name="email" class="text" value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}" >
										
										<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
									</div>
						

						<div class="p-container">
											<label class="checkbox"><input type="checkbox" name="checkbox" checked><i> </i>I Agree to the terms of use</label>
								</div>
								<input type="submit" onclick="myFunction()" value="signup" >
								</form:form>
								<div class="clear"> </div>
								<p>Have an account with us?<a href="#">Login here</a></p>
								<div class="clear"> </div>
				</div>
		</div>
		<div class="login">
			<h3>Login<span>Form</span></h3>
			<div class="login-info">
			
				<form:form method="POST" action="signin">
				<input type="text" class="text" value="User Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}" >
				<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				<div class="btns">
				<input type="submit" onclick="myFunction()" value="login" ></div>
				<p><a href="#">Forgot your password?<span>Click here</span></a></p>
				</form:form>
			</div>
		</div>
		<div class="clear"> </div>
	</div>
</div>
		

</body>
</html>