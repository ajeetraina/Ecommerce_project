<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<br><br>           
<!---------------------------------  carousel  ------------------------------------------------->

<script src=resources/js/effect.js"></script>
    <link href="resources/css/NewFile.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<div id="the-slider" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#the-slider" data-slide-to="0" class="active"></li>
    <li data-target="#the-slider" data-slide-to="1"></li>
    <li data-target="#the-slider" data-slide-to="2"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner" align="center">
    <div class="item active">
      <img src="resources/images/Capture.PNG" alt="..." height="400">
      <div class="carousel-caption">
        <h3>KYLIE COSMETICS</h3>
      </div>
    </div>
    <div class="item">
      <img src="resources/images/bob.JPG" alt="..." height="400">
      <div class="carousel-caption">
        <h3 color="black">BOBBI BROWN</h3>
      </div>
    </div>
    <div class="item">
      <img src="resources/images/envy.JPG" alt="..." height="200">
      <div class="carousel-caption">
        <h3> Estee Lauder</h3>
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#the-slider" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#the-slider" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div> <!-- Carousel -->
<!-- END OF -> -> -> -> LEFT RIGHT controls -->
<!-- *********************************************************************************************** -->

<!-- Page Content -->
<br>
<div class="container" id="01">

        <hr class="featurette-divider">

        <!-- First Featurette -->
        <div class="featurette" >
            <img class="featurette-image img-circle img-responsive pull-right" src="resources/images/lip.jpg" height="100" width="300">
            <h2 class="featurette-heading"><br>So Glam. So Kylie.
                <span class="text-muted">Will Catch Your Eye</span>
            </h2>
            <p class="lead" align="center">The #KylieLipKit is your secret weapon to create the perfect 'Kylie Lip.' Each Lip Kit comes with a Matte Liquid Lipstick and matching Lip Liner.
            The  extremely long wearing lipstick contains moisturizing ingredients for a comfortable, emollient and silky feel that does not dry out your lips.</p>
        </div>

        <hr class="featurette-divider">

        <!-- Second Featurette -->
        <div class="featurette" id="services">
            <img class="featurette-image img-circle img-responsive pull-left" src="resources/images/brush.jpg" height="300" width="300">
            <h2 class="featurette-heading"><br><br><br> M.A.C
                <span class="text-muted">Is Pretty Cool Too.</span>
            </h2>
            <p class="lead" align="center">All Ages, All Races, All Sexes. A professional makeup brand setting trends backstage at fashion weeks around the world.
            <br>MÃ‚Â·AÃ‚Â·C is the worldÃ¢â‚¬â„¢s leading professional makeup authority because of our unrivalled expertise in makeup ARTISTRY.</p>
        </div>

        <hr class="featurette-divider">

        <!-- Third Featurette -->
        <div class="featurette" id="contact">
            <img class="featurette-image img-circle img-responsive pull-right" src="resources/images/gucci.jpg" height="300" width="300">
            <h2 class="featurette-heading"><br><br><br>Gucci Bamboo.
                <span class="text-muted">Will Seal the Deal.</span>
            </h2>
            <p class="lead" align="center">The modern Gucci woman shares BambooÃ¢â‚¬â„¢s characteristics of confidence and poise.
            <br> The fragrance is soft and intense at once, to exude power and femininity. </p>
        </div>


</div>

    <div class="container" id="02">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><br>
                    Exclusively Kylie Cosmetics
                </h1>
            </div>
            
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading" id="panel3">
                        <h3 align="center">Candy K</h3>
                    </div>
                        <img src="resources/images/candy.jpg" height="260">       
                </div>
            </div>
            
            
            <div class="col-md-4">
      
                <div class="panel panel-default">
                    <div class="panel-heading" id="panel2">
                        <h3 align="center"> Mary Jo K</h3>
                    </div>
                    <img src="resources/images/mary.jpg" height="260">       
                    </div>
                </div>
   
            <div class="col-md-4">
      
                <div class="panel panel-default" >
                    <div  class="panel-heading" id="panel3">
                        <h3 align="center"> Exposed</h3>
                    </div>
                    <img src="resources/images/exposed.jpg" height="260">       
                    </div>
                </div>
   
       </div>
</div>
<!-- /.row -->
<br><br><br><br>

<hr id="line">

<!-- About -->
<section id="about">
	<div class="about">
	<div class="container">
		<div class="abouttop">
			<h3>ABOUT</h3>
			<label class="line"></label>
			<h6>Welcome to The Beauty Store.
Here you can explore various makeup products that will make your day shine brighter. </h6>
			<div class="col-md-3 col-sm-3 aboutleft">
				<h4>A QUOTE FROM US</h4>
			</div>
			<div class="col-md-6 col-sm-6 aboutmiddle">
				<div class="aboutleftbottom">
					<p> " Makeup is Art ,   Beauty is spirit "</p>
					
				</div>
				<img src="resources/images/fun.jpg" >
			</div>
			<div class="clearfix"></div>
		</div>	
	</div>		
	<!--    BOTTOM    -->

	<div class="aboutbottom">

		<div class="col-md-3 col-sm-3 aboutimg arrow">
			<img src="resources/images/lipkit.jpg">
		</div>
		<div class="col-md-3 col-sm-3 abouttext">
			<h4>Kylie Cosmetics</h4>
			<h5>Welcome to Kylie Cosmetics</h5>
			<p> Known for her love of cosmetic products and makeup, Kylie Jenner launched Kylie CosmeticsÃ¢â€žÂ  in 2016 after the global launch of her wildly successful liquid lipstick + lip liner duo, the Kylie Lip Kit. Kylie CosmeticsÃ¢â€žÂ  is Kylie JennerÃ¢â‚¬â„¢s new launchpad for sharing her best kept beauty secrets to her fans.</p>
			
		</div>


		<div class="col-md-3 col-sm-3 aboutimg arrow2">
			<img src="resources/images/nude.jpg">
		</div>
		<div class="col-md-3 col-sm-3 abouttext">
			<h4>NYX</h4>
			<h5>NYX is known for high-quality, professional makeup at accessible prices.</h5>
			<p>NYX is defined by exceptional quality products with rich pigments and high payoff. It is a global brand available in over 70 countries at thousands of retailers consisting of specialty beauty and fashion stores, freestanding shops, and beauty supply stores as well.  </p>
		
		</div>

		<div class="col-md-3 col-sm-3 abouttext">
			<h4>BOBBI BROWN</h4>
			<h5>BOBBI BROWN COSMETICS EMPOWERS WOMEN TO LOOK & FEEL LIKE THEMSELVES, ONLY PRETTIER AND MORE CONFIDENT.</h5>
			<p>An exclusive beauty line developed by celebrated makeup artist, Bobbi Brown. Acquired in 1995 by The EstÃƒÂ©e Lauder Companies, it is now sold in 60 countries and territories at select retailers. </p>
		</div>	
		<div class="col-md-3 col-sm-3 aboutimg arrow2">
			<img src="resources/images/bb.jpg">
		</div>

		<div class="col-md-3 col-sm-3 abouttext">
			<h4>M.A.C</h4>
			<h5>M.A.C celebrates diversity and INDIVIDUALITY - we are for All Ages, All Races, All Sexes</h5>
			<p> M.A.C is at the forefront of fashion TRENDSETTING, collaborating with leading talents from fashion, art and popular culture. Our Artists create trends backstage at fashion weeks around the world. </p>
		</div>
		<div class="col-md-3 col-sm-3 aboutimg arrow">
			<img src="resources/images/mac.jpg">
		</div>
		<div class="clearfix"></div>

	</div>
</div>

</section>
<br><br>
<!-- /About -->


<%@ include file="/WEB-INF/views/template/footer.jsp" %>
<! ***************************************************************************** -->

    


    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    
</body>

 <%@ include file="/WEB-INF/views/template/header.jsp" %>
</html>
