<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Home page of Handson, a social entreprise devoted on connecting technology and social issue">
		<meta name="author" content="Myles Ieong">
		<meta name="robots" content="index, follow">
		<title>Handson:home page</title>
		
		<!-- icons -->
		<link rel="apple-touch-icon" href="media/apple-touch-icon.png">
		<link rel="shortcut icon" href="media/favicon.ico">
		
		<!-- Bootstrap Core CSS file -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		<!--Custom css style-->
		<link rel="stylesheet"
			href="css/styles.css">
		<link rel="stylesheet" 
			href="css/carousel.css">

		<!-- JQuery scripts and Bootstrap Core scripts -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
	</head>
	<body>
	<header>
	<%
		String header="handson website";
		String textOutput;
		List dbOutput=new ArrayList<String>();
		try{
			dbOutput= (ArrayList)request.getAttribute("outputdb");
			textOutput= request.getAttribute("output").toString();
			
		}catch(Exception e){
			textOutput="no msg received yet";
		}
	%>
		<h1 class="text-center"><%=header%></h1>
		<h2 class="text-center"><%=textOutput%></h2>
		<h2 class="text-center">
		<% 
			try{
				for(Object obj:dbOutput){
					out.println(obj.toString());
					out.println("<br/>");
				}
				out.println("--end--");
			}catch(Exception e){
				out.println("nothing received from database");
			}
		%> 
		</h2>
		<a href="/Website/hello?keyword=hi" class="btn btn-primary">
			Click to get msg from Hello servlet
		</a>
		<a href="/Website/hellodatabase" class="btn btn-success ">
			Click to get msg from HelloDatabase servlet
		</a>
	    <nav class="navbar navbar-fixed-top navbar-inverse color-bg-3-1" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="#">HANDSON</a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- /.navbar-header -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="#">Home</a></li>
						<li><a href="#">Story</a></li>
						<li><a href="#">Tech</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">About</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</nav>
		
		<!-- Carousel -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
				  <img src="media/evanhand.jpg" alt="First slide">
				  <div class="container">
					<div class="carousel-caption">
					  <h1>Example headline.</h1>
					  <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
					  <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
					</div>
				  </div>
				</div>
				<div class="item">
				  <img src="media/evanhand.jpg" alt="Second slide">
				  <div class="container">
					<div class="carousel-caption">
					  <h1>Another example headline.</h1>
					  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					  <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
					</div>
				  </div>
				</div>
				<div class="item">
				  <img src="media/evanhand.jpg" alt="Third slide">
				  <div class="container">
					<div class="carousel-caption">
					  <h1>One more for good measure.</h1>
					  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
					  <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
					</div>
				  </div>
				</div>
			</div>
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
		<!-- /.carousel -->
			
	</header>
	
	<main>
	<div class="container-fluid">
	<div class="row">
		<div class="col-sm-10">
		<section>
			<!-- three badge-->
			<section>	
				<div class="container-fluid">
					<!--badge of story-->
					<div class="panel panel-default margin-tb-2 color-bg-2-1">
						<div class="row">
							<div class="col-sm-3 text-center">
								<img src="media/cute-boy.jpg" class="img-circle margin-tb-2 margin-lr-2" width="100" height="100" />
							</div>
							<div class="col-sm-8">
								<div class="panel panel-default margin-tb-1">
									<div class="panel-body color-ct-grey margin-lr-2">
										<h4>The story of Nannan</h4>
										<p>This is the story of nannan. He is born without his hand palm. 
										But yet he still grow up happoly. We hope that he will grow up to 
										become a strong and happy man.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-1 text-center">
								<span class="glyphicon glyphicon-play icon-small margin-tb-1 margin-ll-h color-ct-1-1" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				
					<!--badge of tech-->
					<div class="panel panel-default margin-tb-2 color-bg-2-1">
						<div class="row">
							<div class="col-sm-3 text-center">
								<img src="media/evanhand.jpg" class="img-circle margin-tb-2 margin-lr-2" width="100" height="100" />
							</div>
							<div class="col-sm-8">
								<div class="panel panel-default margin-tb-1">
									<div class="panel-body color-ct-grey margin-lr-2">
										<h4>Technology and innovation</h4>
										<p>Technology can be flexible and affordable. We try to adopt new technology such as 3D printing into daily life to make it easier and better.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-1 text-center">
								<span class="glyphicon glyphicon-play icon-small margin-tb-1 margin-ll-h color-ct-1-1" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				
					<!-- badge of about -->
					<div class="panel panel-default margin-tb-2 color-bg-2-1">
						<div class="row">
							<div class="col-sm-3 text-center">
								<img src="media/qrcode.png" class="img-circle margin-tb-2 margin-lr-2" width="100" height="100" />
							</div>
							<div class="col-sm-8">
								<div class="panel panel-default margin-tb-1">
									<div class="panel-body color-ct-grey margin-lr-2">
										<h4>Our vission and mission</h4>
										<p>We are a group of people who strive for a way to combine technology and social issue addressing.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-1 text-center">
								<span class="glyphicon glyphicon-play icon-small margin-tb-1 margin-ll-h color-ct-1-1" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				</div>
			</section>
			
			<!--figure presentation -->
			<section>
				<div class="container-fluid text-center">
					<!-- figure of idea spreading -->
					<div class="col-sm-4">
						<p class="font-huge"><kbd>75</kbd><p>
						<div>
							<span class="glyphicon glyphicon-user icon-small color-ct-1-1" aria-hidden="true" />
						</div>
						<p class="color-ct-grey margin-lr-3 margin-tb-2">We let 75 people try 3D printed handed building</p>
					</div>
					
					<!-- figure of activity kicking -->
					<div class="col-sm-4">
						<p class="font-huge"><kbd>3</kbd><p>
						<div>
							<span class="glyphicon glyphicon-home icon-small color-ct-1-1" aria-hidden="true" />
						</div>
						<p class="color-ct-grey margin-lr-3 margin-tb-2">We held 3 rounds of workshop to spread the idea</p>						
					</div>
					
					<!-- figure of 3D hand printing -->
					<div class="col-sm-4">
						<p class="font-huge"><kbd>15</kbd><p>
						<div>
							<span class="glyphicon glyphicon-heart-empty icon-small color-ct-1-1" aria-hidden="true" />
						</div>
						<p class="color-ct-grey margin-lr-3 margin-tb-2" >We help 15 kids to print their 3D hands</p>					
					</div>
				</div>
			</section>

		</section>
		</div>
		
		<div class="col-sm-2">
		<aside>
			<div class="container-fluid">
				<div class="row text-center margin-tb-2">
					<span class="glyphicon glyphicon-list-alt icon-small color-ct-1-1" />
				</div>
				<div class="row">				
					<div class="well">
						<h6>2016-03-11</h6>
						<p class="color-ct-2-2">We established a connection with x-lab.</p>
					</div>
				</div>
				<div class="row">
					<div class="well">
						<h6>2016-03-13</h6>
						<p class="color-ct-2-2">Our team member planning weekend.</p>
					</div>
				</div>
			</div>
		</aside>
		</div>
	</div>
	</div>
	</main>
	
	<footer class="margin-tb-2 color-bg-3-2">	
		<div class="container-fluid">
			<div class="col-sm-3">
				<h5>Please subscribe our wechat public account</h5>
				<img src="media/qrcode.png" width="100" height="100" />
			</div>
			<div class="col-sm-3">
				<h5>Share this page</h5>
				<img src="media/wechat.svg" width="20" height="20" />
				<p>Share with wechat</p>
				<img src="media/weibo.png" width="20" height="20" />
				<p>Share with weibo</p>
				<img src="media/googleplus.jpg" width="20" height="20" />
				<p>Share with google+</p>
			</div>
			<div class="col-sm-3">
				<h5>Contact us</h5>
				<p>Email: abc@handson.com</p>
				<p>address: Beijing </p>
			</div>
			<div class="col-sm-3">
				<h5>Partners</h5>
				<a>x-lab website</a>
				<a>kickstarter website</a>
			</div>
		</div>
	</footer>
  </body>
</html>

