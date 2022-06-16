
<!DOCTYPE html>

<%@page import="com.kody.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>

<head>
<meta charset="ISO-8859-1">
<title>BlogProject</title>
  <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
  <script src="js/myjs.js" type="text/javascript"></script>
	 <style type="text/css">
	 	  .banner-background{
	 	 clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 92%, 69% 100%, 45% 91%, 20% 100%, 0 91%, 0% 35%, 0 0);
	 	 }
	 	  
	 </style>
</head>
<body>
	<!--  -->
	<%@include file="navbar.jsp" %>
	<!-- Banner -->
	<div class="container-fluid p-0 m-0  banner-background">
		<div class="jumbotron">
			<div class="container">
				<h3 class="display-3">Welcome, Blog</h3>	
				<p>World of blog.ahdjk ahdkjajdkl ajdkljakd kajdkljakljd kajdklja dklajdkljakldj kjakld jkdjklaj kjakldjkla dkl klj</p>
				<p>ajhdj ahsdjkh jkhjkashdjkhaskjhdkahjkd ajkdjkhasjkhdjkahjkdh akhdjkhah khakjdh kad kakh akdjk </p>	
				<button class="btn btn-outline-dark btn-lg" >Start!it's Free</button>
				<a class="btn btn-outline-dark btn-lg" href="Login.jsp">Login</a>
			</div>			
		</div>
		
	</div>
	<!--End Banner-->
	
	<!-- Cards -->
	<div class="container-fluid">
		<!-- First Row -->
		<div class="row mb-4">
			<div class="col-md-4">
				
				 <div class="col">
					  <div class="card">
					    <img class="card-img-top" src="img/error.png" alt="Card image" style="width:100%">
					    <div class="card-body">
					      <h4 class="card-title">John Doe</h4>
					      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					      <a href="#" class="btn btn-primary stretched-link">See Profile</a>
					    </div>
					  </div>
					</div>
			</div>
			
			
			<div class="col-md-4">
				
				 <div class="col ">
					  <div class="card">
					    <img class="card-img-top" src="img/error.png" alt="Card image" style="width:100%">
					    <div class="card-body">
					      <h4 class="card-title">John Doe</h4>
					      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					      <a href="#" class="btn btn-primary stretched-link">See Profile</a>
					    </div>
					  </div>
					</div>
			</div>
			
			
			<div class="col-md-4">
				
				 <div class="col">
					  <div class="card">
					    <img class="card-img-top" src="img/error.png" alt="Card image" style="width:100%">
					    <div class="card-body">
					      <h4 class="card-title">John Doe</h4>
					      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					      <a href="#" class="btn btn-primary stretched-link">See Profile</a>
					    </div>
					  </div>
					</div>
			</div>
			<!-- End First Row -->
		</div>	
		
		<!-- Second Row -->
			<div class="row mb-4">
			<div class="col-md-4">
				
				 <div class="col">
					  <div class="card">
					    <img class="card-img-top" src="img/error.png" alt="Card image" style="width:100%">
					    <div class="card-body">
					      <h4 class="card-title">John Doe</h4>
					      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					      <a href="#" class="btn btn-primary stretched-link">See Profile</a>
					    </div>
					  </div>
					</div>
			</div>
			
			
			<div class="col-md-4">
				
				 <div class="col ">
					  <div class="card">
					    <img class="card-img-top" src="img/error.png" alt="Card image" style="width:100%">
					    <div class="card-body">
					      <h4 class="card-title">John Doe</h4>
					      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					      <a href="#" class="btn btn-primary stretched-link">See Profile</a>
					    </div>
					  </div>
					</div>
			</div>
			
			
			<div class="col-md-4">
				
				 <div class="col">
					  <div class="card">
					    <img class="card-img-top" src="img/error.png" alt="Card image" style="width:100%">
					    <div class="card-body">
					      <h4 class="card-title">John Doe</h4>
					      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
					      <a href="#" class="btn btn-primary stretched-link">See Profile</a>
					    </div>
					  </div>
					</div>
			</div>
		</div>	
		<!-- End Second Row -->
	</div>
	 
	<!-- Start Footer -->
	
	<!-- End Footer -->
	<script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/font.js" type="text/javascript" ></script>
    <script src="js/myjs.js" type="text/javascript"></script>
	<script src="js/popper.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	
	
	</script>
</body>
</html>