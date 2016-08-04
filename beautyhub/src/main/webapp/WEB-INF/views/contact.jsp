
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

 <%@ include file="/WEB-INF/views/template/header.jsp" %>

</head>

<link href="resources/css/NewFile.css" rel='stylesheet' type='text/css' />
</head>

<body>
         

<!-- Contact Section -->
<div class="contact" id="contact">
	<div class="container">
	    <div class="ctop"><br><br>
			<h3>CONTACT</h3>
			<label class="line"></label>
			<p>The Beauty Store has everything you'll need. Please feel free to contact Us and let 
			us know your queries. </p>
		</div>
		<div class="cbottom">
			<div class="col-md-6 col-sm-6 cbl">
				<h4>OUR ADDRESS:</h4>
				<h5>flat no:42/16, <br>GM Chowdhury Road, <br>Khulna.</h5>
				<h4> Phone:</h4>
				<h5>+880 1918 691 601</h5>
				<h4>E-mail:</h4>
				<h5><a href="mailto:shefalibisht00@gmail.com">shefalibisht00@gmail.com</a></h5>
				<h4>Our Website:</h4>
				<h5><a href="https://w3layouts.com/">www.makeupstore.com</a></h5>
            </div>
			<div class="col-md-6 col-sm-6 cbr">
				<form action="#" method="post">
                        <input type="text" name="your name" placeholder=" Name" required="">
						<input type="text" name="your phone" placeholder=" Phone" required="">
						<input type="text" name="your email"placeholder=" Email" required="">
						<textarea rows="5" cols="50" name="your comment" placeholder="Write Your Comment Here"></textarea><br>
						<input type="submit" value="SEND MESSAGE">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //Contact Section -->
</body>
<hr>
 <%@ include file="/WEB-INF/views/template/footer.jsp" %>
</html>